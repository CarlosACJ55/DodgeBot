/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H
#include <main.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f2xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ALO1_LED_C_Pin GPIO_PIN_2
#define ALO1_LED_C_GPIO_Port GPIOE
#define ALO2_LED_A_Pin GPIO_PIN_3
#define ALO2_LED_A_GPIO_Port GPIOE
#define ALO2_LED_B_Pin GPIO_PIN_4
#define ALO2_LED_B_GPIO_Port GPIOE
#define ALO2_LED_C_Pin GPIO_PIN_5
#define ALO2_LED_C_GPIO_Port GPIOE
#define ALARM_NOTIF_Pin GPIO_PIN_2
#define ALARM_NOTIF_GPIO_Port GPIOA
#define ALARM_NOTIF_EXTI_IRQn EXTI2_IRQn
#define ALO_GPIO_A_1_Pin GPIO_PIN_6
#define ALO_GPIO_A_1_GPIO_Port GPIOA
#define ALO_GPIO_B_1_Pin GPIO_PIN_7
#define ALO_GPIO_B_1_GPIO_Port GPIOA
#define ALO_GPIO_C_1_Pin GPIO_PIN_4
#define ALO_GPIO_C_1_GPIO_Port GPIOC
#define SERVO_EN_GPIO_1_Pin GPIO_PIN_5
#define SERVO_EN_GPIO_1_GPIO_Port GPIOC
#define PROP_CONTROL_EN_GPIO_1_Pin GPIO_PIN_0
#define PROP_CONTROL_EN_GPIO_1_GPIO_Port GPIOB
#define FRWD_DRIVE_EN_GPIO_1_Pin GPIO_PIN_1
#define FRWD_DRIVE_EN_GPIO_1_GPIO_Port GPIOB
#define REVERSE_DRIVE_EN_GPIO_1_Pin GPIO_PIN_2
#define REVERSE_DRIVE_EN_GPIO_1_GPIO_Port GPIOB
#define ALARM_RST_GPIO_1_Pin GPIO_PIN_7
#define ALARM_RST_GPIO_1_GPIO_Port GPIOE
#define FRWD_EXT_TORQUE_LIM_EN_GPIO_1_Pin GPIO_PIN_8
#define FRWD_EXT_TORQUE_LIM_EN_GPIO_1_GPIO_Port GPIOE
#define REVERSE_EXT_TORQUE_LIM_EN_GPIO_1_Pin GPIO_PIN_9
#define REVERSE_EXT_TORQUE_LIM_EN_GPIO_1_GPIO_Port GPIOE
#define ENC_B_GPIO_1_Pin GPIO_PIN_11
#define ENC_B_GPIO_1_GPIO_Port GPIOE
#define ENC_C_GPIO_1_Pin GPIO_PIN_13
#define ENC_C_GPIO_1_GPIO_Port GPIOE
#define ABS_ENC_GPIO_1_Pin GPIO_PIN_14
#define ABS_ENC_GPIO_1_GPIO_Port GPIOE
#define GEN_PURPOSE_OUT_GPIO_A_1_Pin GPIO_PIN_15
#define GEN_PURPOSE_OUT_GPIO_A_1_GPIO_Port GPIOE
#define GEN_PURPOSE_OUT_GPIO_B_1_Pin GPIO_PIN_10
#define GEN_PURPOSE_OUT_GPIO_B_1_GPIO_Port GPIOB
#define GEN_PURPOSE_OUT_GPIO_C_1_Pin GPIO_PIN_11
#define GEN_PURPOSE_OUT_GPIO_C_1_GPIO_Port GPIOB
#define PULSE_GPIO_1_Pin GPIO_PIN_14
#define PULSE_GPIO_1_GPIO_Port GPIOB
#define DIR_GPIO_1_Pin GPIO_PIN_15
#define DIR_GPIO_1_GPIO_Port GPIOB
#define CLR_GPIO_1_Pin GPIO_PIN_8
#define CLR_GPIO_1_GPIO_Port GPIOD
#define POS_EN_GPIO_Pin GPIO_PIN_9
#define POS_EN_GPIO_GPIO_Port GPIOD
#define ENC_A_GPIO_1_Pin GPIO_PIN_12
#define ENC_A_GPIO_1_GPIO_Port GPIOD
#define CLR_GPIO_2_Pin GPIO_PIN_10
#define CLR_GPIO_2_GPIO_Port GPIOA
#define PULSE_GPIO_2_Pin GPIO_PIN_11
#define PULSE_GPIO_2_GPIO_Port GPIOA
#define DIR_GPIO_2_Pin GPIO_PIN_12
#define DIR_GPIO_2_GPIO_Port GPIOA
#define ALO_GPIO_A_2_Pin GPIO_PIN_15
#define ALO_GPIO_A_2_GPIO_Port GPIOA
#define ALO_GPIO_B_2_Pin GPIO_PIN_10
#define ALO_GPIO_B_2_GPIO_Port GPIOC
#define ALO_GPIO_C_2_Pin GPIO_PIN_11
#define ALO_GPIO_C_2_GPIO_Port GPIOC
#define SERVO_EN_GPIO_2_Pin GPIO_PIN_12
#define SERVO_EN_GPIO_2_GPIO_Port GPIOC
#define PROP_CONTROL_EN_GPIO_2_Pin GPIO_PIN_0
#define PROP_CONTROL_EN_GPIO_2_GPIO_Port GPIOD
#define FRWD_DRIVE_EN_GPIO_2_Pin GPIO_PIN_1
#define FRWD_DRIVE_EN_GPIO_2_GPIO_Port GPIOD
#define REVERSE_DRIVE_EN_GPIO_2_Pin GPIO_PIN_2
#define REVERSE_DRIVE_EN_GPIO_2_GPIO_Port GPIOD
#define ALARM_RST_GPIO_2_Pin GPIO_PIN_3
#define ALARM_RST_GPIO_2_GPIO_Port GPIOD
#define FRWD_EXT_TORQUE_LIM_EN_GPIO_2_Pin GPIO_PIN_4
#define FRWD_EXT_TORQUE_LIM_EN_GPIO_2_GPIO_Port GPIOD
#define REVERSE_EXT_TORQUE_LIM_EN_GPIO_2_Pin GPIO_PIN_5
#define REVERSE_EXT_TORQUE_LIM_EN_GPIO_2_GPIO_Port GPIOD
#define ENC_A_GPIO_2_Pin GPIO_PIN_3
#define ENC_A_GPIO_2_GPIO_Port GPIOB
#define ENC_B_GPIO_2_Pin GPIO_PIN_4
#define ENC_B_GPIO_2_GPIO_Port GPIOB
#define ENC_C_GPIO_2_Pin GPIO_PIN_5
#define ENC_C_GPIO_2_GPIO_Port GPIOB
#define ABS_ENC_GPIO_2_Pin GPIO_PIN_6
#define ABS_ENC_GPIO_2_GPIO_Port GPIOB
#define GEN_PURPOSE_OUT_GPIO_A_2_Pin GPIO_PIN_7
#define GEN_PURPOSE_OUT_GPIO_A_2_GPIO_Port GPIOB
#define GEN_PURPOSE_OUT_GPIO_B_2_Pin GPIO_PIN_8
#define GEN_PURPOSE_OUT_GPIO_B_2_GPIO_Port GPIOB
#define GEN_PURPOSE_OUT_GPIO_C_2_Pin GPIO_PIN_9
#define GEN_PURPOSE_OUT_GPIO_C_2_GPIO_Port GPIOB
#define ALO1_LED_A_Pin GPIO_PIN_0
#define ALO1_LED_A_GPIO_Port GPIOE
#define ALO1_LED_B_Pin GPIO_PIN_1
#define ALO1_LED_B_GPIO_Port GPIOE

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
