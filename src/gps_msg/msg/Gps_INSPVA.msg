std_msgs/Header header

uint32 week_gnss     # GNSS周
float64 seconds      # 周秒
float64 lat          # 纬度(WGS84) degree  
float64 lon          # 经度(WGS84) degree
float64 height       # 椭球高(WGS84) m 
float64 north_velocity   # 北向速度（负值为南向）m/s
float64 east_velocity    # 东向速度（负值为西向）m/s
float64 up_velocity      # 天向速度m/s
float64 roll             # 横滚角（沿y轴右手螺旋）
float64 pitch            # 俯仰角（沿x轴右手螺旋）
float64 azimuth          # 航向角，从北向顺时针方向为正（绕z轴左手螺旋）
                        # 这是IMU陀螺仪组合滤波计算出的惯性方位角
string status   # 如下

# 0 INS_INACTIVE    IMU数据已存储,但未开始对准; INS 不解算
# 1 INS_ALIGNING    INS对准模式
        
# 2 INS_HIGH_VARIANCE   INS已进入导航模式,但航向角误差超限.对于大多 
#                       数IMU,默认阈值是 2 度。INS 解仍然有效,但是
#                       您应监视在 INSSTDEV 日志中的解的不确定性。当
#                       GNSS 用于帮助 INS 时,您可能会遇到这种状态

# 3 INS_SOLUTION_GOOD   进入导航模式且 INS 解正常

# 4 INS_SOLUTION_FREE   INS滤波器处于导航模式,GNSS 解被怀疑是错
#                       误的。这可能是由于多径或有限的卫星能见度。
#                       组合滤波器已拒绝 GNSS 位置,并等待其质量
#                       提高

#5 INS_ALIGNMENT_COMPLETE   INS滤波器处于导航模式,但还没有足够的车辆动
#                           态使其满足指标要求。

#6 DETERMINING_ORIENTATION  INS正在利用重力确定IMU轴向

#7 WAITING_INITIALPOS   INS滤波器确定IMU方向,并等待初始位置估计开
#                       始对准过程

#8 WAITING_AZIMUTH      INS滤波器具有方向、初始偏置、初始位置和有效
#                       横滚、俯仰估计。直到输入初始方位才开始进一步
#                       工作

#9 INITIALIZING_BIASES  INS滤波器估计在静态数据的前 10 秒内的初始偏置
#10 MOTION_DETECT       INS滤波器没有完全对准,但已经检测到运动

