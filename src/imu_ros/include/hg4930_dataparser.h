//
// Created by dyc on 2021/4/13.
//

#ifndef SRC_HG4930_DATAPARSER_H
#define SRC_HG4930_DATAPARSER_H

#endif //SRC_HG4930_DATAPARSER_H

#include "imu_node.h"

namespace hg4930_dataparser
{
    struct HG4930StatusWord
    {
        bool IMU; // 0 = OK | 1 = Failed
        bool Gyro; // 0 = OK | 1 = Failed
        bool Accelerometer; // 0 = OK | 1 = Failed
        bool GyroOK; // 0 = OK | 1 = Failed
        bool GyroXValidity; // 0 = OK | 1 = Failed [inverted from ICD]
        bool GyroYValidity; // 0 = OK | 1 = Failed [inverted from ICD]
        bool GyroZValidity; // 0 = OK | 1 = Failed [inverted from ICD]
        bool IMUOK; // 0 = OK | 1 = Failed
        bool GyroHealth; // 0 = OK | 1 = Failed
        bool StartDataFlag; // 0 = OK | 1 = Failed
        bool ProcessTest; // 0 = OK | 1 = Failed
        bool MemoryTest; // 0 = OK | 1 = Failed
        bool ElectronicsTest; // 0 = OK | 1 = Failed
        bool GyroHealth2; // 0 = OK | 1 = Failed
        bool AccelerometerHealth; // 0 = OK | 1 = Failed
        //Zero Method
        void ZeroMessage()
        {
            IMU = 0;
            Gyro = 0;
            Accelerometer = 0;
            GyroOK = 0;
            GyroXValidity = 0;
            GyroYValidity = 0;
            GyroZValidity = 0;
            IMUOK = 0;
            GyroHealth = 0;
            StartDataFlag = 0;
            ProcessTest = 0;
            MemoryTest = 0;
            ElectronicsTest = 0;
            GyroHealth2 = 0;
            AccelerometerHealth = 0;
        }
    };

    struct HG4930ControlMessage            // imu structures
    {
        // uint16_t head;
        UINT8 IMUAddress;
        UINT8 MessageID; //Last Message ID (Control or Intertial)
        float AngularRate[3]; // [rad/s] X, Y, Z
        float LinearAcceleration[3]; // [m/s2] X, Y, Z
        UINT8 MultiplexedCounter; // MUX counter value
        UINT8 ModeIndicator; // 0 = Power up BIT | 1 = Continuous BIT
        UINT8 StatusWord2A2BFlag; //Indicator which status word is being sent [0 = 2A | 1 = 2B]
        struct HG4930StatusWord StatusWord;
        short SoftwareVersionNumber; //Software version number
        INT8 Temperature; // [캜]
        short Checksum; // Stored last message checksum
        //Zero Method
        void ZeroMessage()
        {
            IMUAddress = 0;
            MessageID = 0;
            AngularRate[0] = AngularRate[1] = AngularRate[2] = 0;
            LinearAcceleration[0] = LinearAcceleration[1] = LinearAcceleration[2] = 0;
            MultiplexedCounter = 0;
            ModeIndicator = 0;
            StatusWord2A2BFlag = 0;
            StatusWord.ZeroMessage();
            SoftwareVersionNumber = 0;
            Temperature = 0;
            Checksum = 0;
        }
    };

    struct HG4930InertialMessage
    {
        struct HG4930ControlMessage ControlMessage;
        float DeltaAngle[3]; // [rad] X, Y, Z
        float DeltaVelocity[3]; // [m/s] X, Y, Z
        //Zero Method
        void ZeroMessage()
        {
            ControlMessage.ZeroMessage();
            DeltaAngle[0] = DeltaAngle[1] = DeltaAngle[2] = 0;
            DeltaVelocity[0] = DeltaVelocity[1] = DeltaVelocity[2] = 0;
        }
    };

    int GetHG4930X01ControlMessage(UINT8 *buffer, int startOffset, struct HG4930ControlMessage *Message);
    int GetHG4930X02InertialMessage(UINT8 *buffer, int startOffset, struct HG4930InertialMessage *Message);
}
