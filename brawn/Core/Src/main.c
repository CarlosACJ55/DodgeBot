/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "string.h"
#include <stdlib.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
#define MAX_Q_LEN 100
typedef struct {
  int xPul, yPul;
} Position;

typedef struct {
  Position moves[MAX_Q_LEN];
  unsigned char start;
  unsigned char end;
  unsigned char count;
} MoveQueue;

typedef enum State {
  IDLE = 'I',
  IN_GAME = 'S',
  RE_CENTER = 'R',
  DISCONNECTED = 'D'
} State;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define MAX_TX_LEN 30
#define TIMEOUT 1000
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
DAC_HandleTypeDef hdac;

RTC_HandleTypeDef hrtc;

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim12;

UART_HandleTypeDef huart6;

/* USER CODE BEGIN PV */
unsigned char c;
volatile unsigned char buffer[MAX_TX_LEN];
volatile int i = 0, msgReady = 0;
unsigned char msg[MAX_TX_LEN];
MoveQueue movQ = {0};
State gameState = DISCONNECTED;
#if defined(SIM) || defined(TRACK)
Position curPos = {0};
#endif
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_RTC_Init(void);
static void MX_TIM1_Init(void);
static void MX_TIM12_Init(void);
static void MX_DAC_Init(void);
static void MX_USART6_UART_Init(void);
static void MX_TIM4_Init(void);
/* USER CODE BEGIN PFP */
static void transmit(const char *);
//static void resetMotors(void);
static void sendPos(void);
static void handleCommand(const char);
static void enqueueMove(Position *);
static void handlePos(unsigned char *);
static int motorsReady(void);
static Position dequeueMove(void);
static void send_pulses(Position move);
static void alarm_reset(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_RTC_Init();
  MX_TIM1_Init();
  MX_TIM12_Init();
  MX_DAC_Init();
  MX_USART6_UART_Init();
  MX_TIM4_Init();
  /* USER CODE BEGIN 2 */
  __HAL_UART_ENABLE_IT(&huart6, UART_IT_RXNE);
  HAL_UART_Receive_IT(&huart6, (unsigned char *)&c, 1);
  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_4);
  HAL_TIM_PWM_Start(&htim12, TIM_CHANNEL_1);
  htim1.Instance->CNT = 0;
  htim12.Instance->CNT = 0;


  //Set the pin high to enable proportional control/action (make sure its set to zero for now)
  HAL_GPIO_WritePin(PROP_CONTROL_EN_GPIO_1_GPIO_Port, PROP_CONTROL_EN_GPIO_1_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(PROP_CONTROL_EN_GPIO_2_GPIO_Port, PROP_CONTROL_EN_GPIO_2_Pin, GPIO_PIN_RESET);

  //Set the pin high to enable to enable forward direction movement
  HAL_GPIO_WritePin(FRWD_DRIVE_EN_GPIO_1_GPIO_Port, FRWD_DRIVE_EN_GPIO_1_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(FRWD_DRIVE_EN_GPIO_2_GPIO_Port, FRWD_DRIVE_EN_GPIO_2_Pin, GPIO_PIN_SET);
  //Set the pin high to enable to enable reverse direction movement
  HAL_GPIO_WritePin(REVERSE_DRIVE_EN_GPIO_1_GPIO_Port, REVERSE_DRIVE_EN_GPIO_1_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(REVERSE_DRIVE_EN_GPIO_2_GPIO_Port, REVERSE_DRIVE_EN_GPIO_2_Pin, GPIO_PIN_SET);

  //Enable high to limit the torque in the forward direction (set to zero for now)
  HAL_GPIO_WritePin(FRWD_EXT_TORQUE_LIM_EN_GPIO_1_GPIO_Port, FRWD_EXT_TORQUE_LIM_EN_GPIO_1_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(FRWD_EXT_TORQUE_LIM_EN_GPIO_2_GPIO_Port, FRWD_EXT_TORQUE_LIM_EN_GPIO_2_Pin, GPIO_PIN_RESET);
  //Enable high to limit the torque in the reverse direction (set to zero for now)
  HAL_GPIO_WritePin(REVERSE_EXT_TORQUE_LIM_EN_GPIO_1_GPIO_Port, REVERSE_EXT_TORQUE_LIM_EN_GPIO_1_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(REVERSE_EXT_TORQUE_LIM_EN_GPIO_2_GPIO_Port, REVERSE_EXT_TORQUE_LIM_EN_GPIO_2_Pin, GPIO_PIN_RESET);


  HAL_GPIO_WritePin(SERVO_EN_GPIO_1_GPIO_Port, SERVO_EN_GPIO_1_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(SERVO_EN_GPIO_2_GPIO_Port, SERVO_EN_GPIO_2_Pin, GPIO_PIN_RESET);
//  HAL_GPIO_WritePin(SERVO_EN_GPIO_1_GPIO_Port, SERVO_EN_GPIO_1_Pin, GPIO_PIN_SET);
//  HAL_GPIO_WritePin(SERVO_EN_GPIO_2_GPIO_Port, SERVO_EN_GPIO_2_Pin, GPIO_PIN_SET);
//turns on motors
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  int readyReported = 0;
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
    if (msgReady) {
#ifdef ECHO
      transmit((const char *)msg);
#else
      switch (msg[0]) {
      case '!':
        handleCommand(msg[1]);
        break;
      case 'X':
        handlePos(msg + 1);
        break;
      default:
        transmit("A999\0");
        gameState = DISCONNECTED;
      }
#endif
      msgReady = 0;
    }
#ifndef TRACK
    if (gameState == IN_GAME) {
      if (movQ.count) {
        if (motorsReady()) {
          readyReported = 0;
          send_pulses(dequeueMove());
        }
      }
//      else if (readyReported == 0 && motorsReady()) {
//        transmit("A555\0");
//        readyReported = 1;
//      }
    }



#endif
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_LSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 13;
  RCC_OscInitStruct.PLL.PLLN = 195;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_RTC;
  PeriphClkInitStruct.RTCClockSelection = RCC_RTCCLKSOURCE_LSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief DAC Initialization Function
  * @param None
  * @retval None
  */
static void MX_DAC_Init(void)
{

  /* USER CODE BEGIN DAC_Init 0 */

  /* USER CODE END DAC_Init 0 */

  DAC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN DAC_Init 1 */

  /* USER CODE END DAC_Init 1 */

  /** DAC Initialization
  */
  hdac.Instance = DAC;
  if (HAL_DAC_Init(&hdac) != HAL_OK)
  {
    Error_Handler();
  }

  /** DAC channel OUT1 config
  */
  sConfig.DAC_Trigger = DAC_TRIGGER_NONE;
  sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
  if (HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }

  /** DAC channel OUT2 config
  */
  if (HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN DAC_Init 2 */

  /* USER CODE END DAC_Init 2 */

}

/**
  * @brief RTC Initialization Function
  * @param None
  * @retval None
  */
static void MX_RTC_Init(void)
{

  /* USER CODE BEGIN RTC_Init 0 */

  /* USER CODE END RTC_Init 0 */

  /* USER CODE BEGIN RTC_Init 1 */

  /* USER CODE END RTC_Init 1 */

  /** Initialize RTC Only
  */
  hrtc.Instance = RTC;
  hrtc.Init.HourFormat = RTC_HOURFORMAT_24;
  hrtc.Init.AsynchPrediv = 127;
  hrtc.Init.SynchPrediv = 255;
  hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
  hrtc.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
  hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;
  if (HAL_RTC_Init(&hrtc) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN RTC_Init 2 */

  /* USER CODE END RTC_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 0;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 4;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_OnePulse_Init(&htim1, TIM_OPMODE_SINGLE) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM2;
  sConfigOC.Pulse = 2;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim1, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */
  HAL_TIM_MspPostInit(&htim1);

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 0;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 65535;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */

}

/**
  * @brief TIM12 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM12_Init(void)
{

  /* USER CODE BEGIN TIM12_Init 0 */

  /* USER CODE END TIM12_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM12_Init 1 */

  /* USER CODE END TIM12_Init 1 */
  htim12.Instance = TIM12;
  htim12.Init.Prescaler = 0;
  htim12.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim12.Init.Period = 4;
  htim12.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim12.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim12) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim12, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim12) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_OnePulse_Init(&htim12, TIM_OPMODE_SINGLE) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM2;
  sConfigOC.Pulse = 2;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim12, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM12_Init 2 */

  /* USER CODE END TIM12_Init 2 */
  HAL_TIM_MspPostInit(&htim12);

}

/**
  * @brief USART6 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART6_UART_Init(void)
{

  /* USER CODE BEGIN USART6_Init 0 */

  /* USER CODE END USART6_Init 0 */

  /* USER CODE BEGIN USART6_Init 1 */

  /* USER CODE END USART6_Init 1 */
  huart6.Instance = USART6;
  huart6.Init.BaudRate = 921600;
  huart6.Init.WordLength = UART_WORDLENGTH_8B;
  huart6.Init.StopBits = UART_STOPBITS_1;
  huart6.Init.Parity = UART_PARITY_NONE;
  huart6.Init.Mode = UART_MODE_TX_RX;
  huart6.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart6.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart6) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART6_Init 2 */

  /* USER CODE END USART6_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, ALO1_LED_C_Pin|ALO2_LED_A_Pin|ALO2_LED_B_Pin|ALO2_LED_C_Pin
                          |ALARM_RST_GPIO_1_Pin|FRWD_EXT_TORQUE_LIM_EN_GPIO_1_Pin|REVERSE_EXT_TORQUE_LIM_EN_GPIO_1_Pin|ALO1_LED_A_Pin
                          |ALO1_LED_B_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, SERVO_EN_GPIO_1_Pin|SERVO_EN_GPIO_2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, PROP_CONTROL_EN_GPIO_1_Pin|FRWD_DRIVE_EN_GPIO_1_Pin|REVERSE_DRIVE_EN_GPIO_1_Pin|DIR_GPIO_1_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOD, CLR_GPIO_1_Pin|PROP_CONTROL_EN_GPIO_2_Pin|FRWD_DRIVE_EN_GPIO_2_Pin|REVERSE_DRIVE_EN_GPIO_2_Pin
                          |ALARM_RST_GPIO_2_Pin|FRWD_EXT_TORQUE_LIM_EN_GPIO_2_Pin|REVERSE_EXT_TORQUE_LIM_EN_GPIO_2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(POS_EN_GPIO_GPIO_Port, POS_EN_GPIO_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, CLR_GPIO_2_Pin|DIR_GPIO_2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : ALO1_LED_C_Pin ALO2_LED_A_Pin ALO2_LED_B_Pin ALO2_LED_C_Pin
                           ALARM_RST_GPIO_1_Pin FRWD_EXT_TORQUE_LIM_EN_GPIO_1_Pin REVERSE_EXT_TORQUE_LIM_EN_GPIO_1_Pin ALO1_LED_A_Pin
                           ALO1_LED_B_Pin */
  GPIO_InitStruct.Pin = ALO1_LED_C_Pin|ALO2_LED_A_Pin|ALO2_LED_B_Pin|ALO2_LED_C_Pin
                          |ALARM_RST_GPIO_1_Pin|FRWD_EXT_TORQUE_LIM_EN_GPIO_1_Pin|REVERSE_EXT_TORQUE_LIM_EN_GPIO_1_Pin|ALO1_LED_A_Pin
                          |ALO1_LED_B_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /*Configure GPIO pin : ALARM_NOTIF_Pin */
  GPIO_InitStruct.Pin = ALARM_NOTIF_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(ALARM_NOTIF_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : ALO_GPIO_A_1_Pin ALO_GPIO_B_1_Pin ALO_GPIO_A_2_Pin */
  GPIO_InitStruct.Pin = ALO_GPIO_A_1_Pin|ALO_GPIO_B_1_Pin|ALO_GPIO_A_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : ALO_GPIO_C_1_Pin ALO_GPIO_B_2_Pin ALO_GPIO_C_2_Pin */
  GPIO_InitStruct.Pin = ALO_GPIO_C_1_Pin|ALO_GPIO_B_2_Pin|ALO_GPIO_C_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : SERVO_EN_GPIO_1_Pin SERVO_EN_GPIO_2_Pin */
  GPIO_InitStruct.Pin = SERVO_EN_GPIO_1_Pin|SERVO_EN_GPIO_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PROP_CONTROL_EN_GPIO_1_Pin FRWD_DRIVE_EN_GPIO_1_Pin REVERSE_DRIVE_EN_GPIO_1_Pin DIR_GPIO_1_Pin */
  GPIO_InitStruct.Pin = PROP_CONTROL_EN_GPIO_1_Pin|FRWD_DRIVE_EN_GPIO_1_Pin|REVERSE_DRIVE_EN_GPIO_1_Pin|DIR_GPIO_1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : ENC_B_GPIO_1_Pin ENC_C_GPIO_1_Pin ABS_ENC_GPIO_1_Pin GEN_PURPOSE_OUT_GPIO_A_1_Pin */
  GPIO_InitStruct.Pin = ENC_B_GPIO_1_Pin|ENC_C_GPIO_1_Pin|ABS_ENC_GPIO_1_Pin|GEN_PURPOSE_OUT_GPIO_A_1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /*Configure GPIO pins : GEN_PURPOSE_OUT_GPIO_B_1_Pin GEN_PURPOSE_OUT_GPIO_C_1_Pin ENC_A_GPIO_2_Pin ENC_B_GPIO_2_Pin
                           ENC_C_GPIO_2_Pin ABS_ENC_GPIO_2_Pin GEN_PURPOSE_OUT_GPIO_A_2_Pin GEN_PURPOSE_OUT_GPIO_B_2_Pin
                           GEN_PURPOSE_OUT_GPIO_C_2_Pin */
  GPIO_InitStruct.Pin = GEN_PURPOSE_OUT_GPIO_B_1_Pin|GEN_PURPOSE_OUT_GPIO_C_1_Pin|ENC_A_GPIO_2_Pin|ENC_B_GPIO_2_Pin
                          |ENC_C_GPIO_2_Pin|ABS_ENC_GPIO_2_Pin|GEN_PURPOSE_OUT_GPIO_A_2_Pin|GEN_PURPOSE_OUT_GPIO_B_2_Pin
                          |GEN_PURPOSE_OUT_GPIO_C_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : CLR_GPIO_1_Pin POS_EN_GPIO_Pin PROP_CONTROL_EN_GPIO_2_Pin FRWD_DRIVE_EN_GPIO_2_Pin
                           REVERSE_DRIVE_EN_GPIO_2_Pin ALARM_RST_GPIO_2_Pin FRWD_EXT_TORQUE_LIM_EN_GPIO_2_Pin REVERSE_EXT_TORQUE_LIM_EN_GPIO_2_Pin */
  GPIO_InitStruct.Pin = CLR_GPIO_1_Pin|POS_EN_GPIO_Pin|PROP_CONTROL_EN_GPIO_2_Pin|FRWD_DRIVE_EN_GPIO_2_Pin
                          |REVERSE_DRIVE_EN_GPIO_2_Pin|ALARM_RST_GPIO_2_Pin|FRWD_EXT_TORQUE_LIM_EN_GPIO_2_Pin|REVERSE_EXT_TORQUE_LIM_EN_GPIO_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*Configure GPIO pin : ENC_A_GPIO_1_Pin */
  GPIO_InitStruct.Pin = ENC_A_GPIO_1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(ENC_A_GPIO_1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : CLR_GPIO_2_Pin DIR_GPIO_2_Pin */
  GPIO_InitStruct.Pin = CLR_GPIO_2_Pin|DIR_GPIO_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI2_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI2_IRQn);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */


void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  /* Prevent unused argument(s) compilation warning */
  switch (GPIO_Pin) {
  case ALARM_NOTIF_Pin:
    HAL_GPIO_WritePin(GPIOA, ALO1_LED_A_Pin, HAL_GPIO_ReadPin(ALO_GPIO_A_1_GPIO_Port, ALO_GPIO_A_1_Pin));
    HAL_GPIO_WritePin(GPIOA, ALO2_LED_A_Pin, HAL_GPIO_ReadPin(ALO_GPIO_A_2_GPIO_Port, ALO_GPIO_A_2_Pin));
    HAL_GPIO_WritePin(GPIOB, ALO1_LED_B_Pin, HAL_GPIO_ReadPin(ALO_GPIO_B_1_GPIO_Port, ALO_GPIO_B_1_Pin));
    HAL_GPIO_WritePin(GPIOB, ALO2_LED_B_Pin, HAL_GPIO_ReadPin(ALO_GPIO_B_2_GPIO_Port, ALO_GPIO_B_2_Pin));
    HAL_GPIO_WritePin(GPIOC, ALO1_LED_C_Pin, HAL_GPIO_ReadPin(ALO_GPIO_C_1_GPIO_Port, ALO_GPIO_C_1_Pin));
    HAL_GPIO_WritePin(GPIOC, ALO2_LED_C_Pin, HAL_GPIO_ReadPin(ALO_GPIO_C_2_GPIO_Port, ALO_GPIO_C_2_Pin));
    alarm_reset();
  }
//  HAL_GPIO_ReadPin
}

void transmit(const char *m) {
  char s[MAX_TX_LEN];
  snprintf(s, sizeof(s), "%s#%s;\n", m, m);
  HAL_UART_Transmit(&huart6, (unsigned char *)s, strlen(s), HAL_MAX_DELAY);
}

//void resetMotors() { return; }

void handleCommand(const char code) {
  switch (code) {
  case 'R':
    gameState = RE_CENTER;
    transmit("!R\0");
    break;
  case 'I':
//    if (gameState == RE_CENTER || gameState == IN_GAME)
//      resetMotors();
    gameState = IDLE;
    //turns motors on
    HAL_GPIO_WritePin(SERVO_EN_GPIO_1_GPIO_Port, SERVO_EN_GPIO_1_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(SERVO_EN_GPIO_2_GPIO_Port, SERVO_EN_GPIO_2_Pin, GPIO_PIN_RESET);
    transmit("!I\0");
    break;
  case 'D':
    gameState = DISCONNECTED;
    transmit("!D\0");
    HAL_GPIO_WritePin(SERVO_EN_GPIO_1_GPIO_Port, SERVO_EN_GPIO_1_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(SERVO_EN_GPIO_2_GPIO_Port, SERVO_EN_GPIO_2_Pin, GPIO_PIN_RESET);
    break;
  case 'S':
    if (gameState != IDLE){
      HAL_GPIO_WritePin(SERVO_EN_GPIO_1_GPIO_Port, SERVO_EN_GPIO_1_Pin, GPIO_PIN_RESET);
      HAL_GPIO_WritePin(SERVO_EN_GPIO_2_GPIO_Port, SERVO_EN_GPIO_2_Pin, GPIO_PIN_RESET);
      transmit("A988\0");
    }
    else {
      gameState = IN_GAME;
      transmit("!S\0");
      //turn on motors
      HAL_GPIO_WritePin(SERVO_EN_GPIO_1_GPIO_Port, SERVO_EN_GPIO_1_Pin, GPIO_PIN_SET);
      HAL_GPIO_WritePin(SERVO_EN_GPIO_2_GPIO_Port, SERVO_EN_GPIO_2_Pin, GPIO_PIN_SET);
    }
    break;
  case '?':
    sendPos();
    break;
  default:
    transmit("A989\0");
  }
}

void enqueueMove(Position *m) {
  if (movQ.count++ == MAX_Q_LEN)
    transmit("A979\0");
  Position *end = &movQ.moves[movQ.end++];
  movQ.end %= MAX_Q_LEN;
  end->xPul = m->xPul;
  end->yPul = m->yPul;
}

void sendPos() {
#ifdef SIM
  char message[MAX_TX_LEN] = {0};
  sprintf(message, "X%d,%d", curPos.xPul, curPos.yPul);
  transmit(message);
#endif
}

void handlePos(unsigned char *data) {
  Position m;
  sscanf((char *)data, "%d,%d", &m.xPul, &m.yPul);
#ifdef TRACK
  curPos.xPul += m.xPul;
  curPos.yPul += m.yPul;
  sendPos();
#else
  enqueueMove(&m);
#endif
}

int motorsReady(void) {
#ifdef SIM
  return 1;
#else
//  return 1;
    return !HAL_GPIO_ReadPin(GPIOB, GEN_PURPOSE_OUT_GPIO_B_1_Pin) &&
        HAL_GPIO_ReadPin(GPIOA, GEN_PURPOSE_OUT_GPIO_A_1_Pin) && HAL_GPIO_ReadPin(GPIOA, GEN_PURPOSE_OUT_GPIO_A_2_Pin);
    // && HAL_GPIO_ReadPin(GPIOB, GEN_PURPOSE_OUT_GPIO_B_2_Pin);
#endif
}

Position dequeueMove() {
  if (!movQ.count--)
    transmit("A978\0");
  Position move = movQ.moves[movQ.start++];
  movQ.start %= MAX_Q_LEN;
  return move;
}

void send_pulses(Position move) {
#ifndef SIM
//  while (HAL_GPIO_ReadPin(GPIOC, GEN_PURPOSE_OUT_GPIO_C_1_Pin) || HAL_GPIO_ReadPin(GPIOC, GEN_PURPOSE_OUT_GPIO_C_2_Pin));
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, move.xPul < 0 ? GPIO_PIN_RESET : GPIO_PIN_SET);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12, move.yPul < 0 ? GPIO_PIN_RESET : GPIO_PIN_SET);
  uint16_t x_val = abs(move.xPul);
  uint16_t y_val = abs(move.yPul);
  int higher = x_val, lower = y_val;
  TIM_HandleTypeDef *higherTim = &htim12, *lowerTim = &htim1;

  if (lower > higher) {
    higher = y_val;
    lower = x_val;
    higherTim = &htim1;
    lowerTim = &htim12;
  }
  higher -= lower;
  while (lower--) {
    for (int i = 0; i < htim12.Instance->ARR; i++) {
      higherTim->Instance->CNT = i;
      lowerTim->Instance->CNT = i;
    }
  }
  lowerTim->Instance->CNT = 0;
  while (higher--) {
    for (int i = 0; i < htim12.Instance->ARR; i++) {
      higherTim->Instance->CNT = i;
    }
  }
  higherTim->Instance->CNT = 0;
  //function that waits for the motors to be ready and then sends a signbal when ready
  return;
#else
    curPos.xPul += move.xPul;
    curPos.yPul += move.yPul;
#endif
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {
  switch (c) {
  case '#':
    msg[i] = buffer[i] = '\0';
    strcpy((char *)msg, (char *)buffer);
    i = 0;
    break;
  case ';':
    buffer[i] = '\0';
    i = 0;
    if (strcmp((char *)msg, (char *)buffer) || msgReady) {
      gameState = DISCONNECTED;
      msgReady = 0;
    }
    else
      msgReady = 1;
    break;
  default:
    buffer[i++] = c;
    if (i == MAX_TX_LEN)
      transmit("A969\0");
  }
}

void alarm_reset(void){
  //Enable high to reset the alarm codes on the motor, and then release.
  HAL_GPIO_WritePin(ALARM_RST_GPIO_1_GPIO_Port, ALARM_RST_GPIO_1_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(ALARM_RST_GPIO_2_GPIO_Port, ALARM_RST_GPIO_2_Pin, GPIO_PIN_SET);
  HAL_Delay(50);
  HAL_GPIO_WritePin(ALARM_RST_GPIO_1_GPIO_Port, ALARM_RST_GPIO_1_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(ALARM_RST_GPIO_2_GPIO_Port, ALARM_RST_GPIO_2_Pin, GPIO_PIN_RESET);
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
