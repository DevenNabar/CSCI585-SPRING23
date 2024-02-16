from math import sin,cos,pi
class Point:
  def __init__(self,latitude,longitude):
    self.latitude = latitude
    self.longitude = longitude

t = 0.00
R = 6.0
r = 1.0
a = 8.0
TT = Point(34.020523,-118.285464)
with open("spirographic_points.txt", 'w') as f:
    while t < 12*pi:
        x = ((R + r) * cos((r / R) * t) - a * cos((1 + r / R) * t))*0.00015
        x+=TT.longitude
        y = ((R + r) * sin((r / R) * t) - a * sin((1 + r / R) * t))*0.00015
        y+=TT.latitude
        x = str(x)
        y = str(y)
        string=""
        string+= "{},{}\n".format(x,y)
        f.write(string)
        t+=0.01
