
# IMU Data Conversion Module

Bytes단위로 주어진 IMU 센서의 Raw Data를 수치 값으로 변경하는 유닛.

Accelerometer값은 g-force로
Gyroscope값은 radians / second로 변환한다.

This module is designed to convert raw IMU sensor data provided in bytes to readable scale units. It helps interpret accelerometer and gyroscope data, translating them to g-force and degrees per second respectively.

## 문제점

주어진 데이터 상 Raw Data 변환을 수행하면, 회사에서 보내주신 데이터에서 Non filtered data의 값과 일치해야 하는데,
Accelerometer 값들은 전부 일치한다 (정확도 100%)
Gyroscope 값들은 정확도가 100가 나오지 않는다. (아마도 0인 값들만 정답처리 되는듯)
