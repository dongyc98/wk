std_msgs/Header header

string pos_status   # 位置状态 A=有效，V=无效  我自己添加
# GAGGA 数据包msg
float64 utc         # hhmmss.ss
float64 lat         # 经度
string  lat_dir
float64 lon         # 纬度
string  lon_dir
uint8   qual        # GPS质量指示符  0=定位不可用  1=单点定位  2=伪距差分或SBAS定位，4=RTK固定解，5=RTK浮点解，6=惯导定位
uint8   sats        # 使用中的卫星数，可能与所见数不一致
float32 hdop        # 水平精度因子
float64 alt         # 天线海拔高度，低于大地水准面为负值
string  a_units     # 天线高度单位
float32 undulation  # 大地水准面差距-大地水准面和WGS84椭球面之间的距离，大地水准面高于椭球面为正值，否则为负
string  u_units     # 大地水准面差距单位
string  age         # 差分数据龄期，秒为单位（没有差分数据时为空）
int64   stn_ID      # 差分基站ID，0000-4096 （没有差分数据时为空）