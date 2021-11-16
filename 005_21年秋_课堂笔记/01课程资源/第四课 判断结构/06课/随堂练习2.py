
# 输入名次
mc = int(input("参加运动会项目名次（1-6）："))

#利用列表，计算得分
lst = [7,5,4,3,2,1]
if mc>=1 and mc<=6:
      df = lst[mc-1]      
      print("项目得分为：", df)
else:
      print("输入的名次不在1-6范围！")



