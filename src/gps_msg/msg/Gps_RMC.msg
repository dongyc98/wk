std_msgs/Header header

# GNRMC 数据包msg
float64 utc         # hhmmss.ss
string pos_status   # 位置状态 A=有效，V=无效
float64 lat         # 纬度
string  lat_dir     # 纬度方向
float64 lon         # 经度
string  lon_dir     # 经度方向
float64 speed_Kn    # 地速 knot
float32 track_true  # 真北航迹方向,deg
int64  date         # 日期 ddmmyy 
float32 mag_var     # 磁偏角 deg
string var_dir      # 磁偏角方向 E/W
string mode_ind     # 定位模式指示器

# GNGSA 数据包msg   定位使用的卫星和DOP值（相对误差）
# float32 pdop        # 位置精度因子
# float32 hdop        # 平面精度因子
# float32 vdop        # 高程精度因子





