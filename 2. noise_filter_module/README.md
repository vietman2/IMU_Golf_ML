
# Noise Filter Module

IMU 센서 데이터에서의 노이즈를 제거하기 위한 모듈.

이 모듈은 주어진 센서 데이터의 노이즈를 제거하거나 줄이기 위해 다양한 필터링 방법을 사용해본다.

## 고려할 점들

- 각 모델별 속도와 정확성 비교
- 실시간 애플리케이션에서 ML/DL 방법을 사용할 때의 계산 비용과 모델 크기
- 지연 시간: 실시간 계산에서 걸리는 시간
- 모바일 배포를 위한 모델 최적화 기술 필요성

## 시도해 볼 방법들

### Non-ML/DL

- Kalman Filters:
  - 장점: Gaussion 노이즈와 선형 시스템 모델에 가장 효과적인 방법이다. 계산이 효율적이고 실시간 애플리케이션에 적합하다.
  - 단점: Gaussion 노이즈와 선형 시스템을 가정한다
- Moving Averages:
  - 장점: 구현이 간단하고 이해하기 쉽다. 단기 변동을 평활화하는데 효과적이다
  - 단점: 매우 실용성이 떨어진다. 윈도우 크기에 따라 지연도 발생한다

### ML/DL

- 1D-CNN:
  - 장점: 복잡한 데이터 패턴을 학습하고 적용할 수 있다
  - 단점: 많은 데이터가 필요하다. 계산 비용이 높을 것으로 예상된다
- Autoencoder:
  - 장점: 노이즈가 있는 신호에서 원래의 신호를 재구성하는데 사용된다
  - 단점: 많은 데이터가 필요하다. 계산 비용이 높을 것으로 예상된다

## 코드

### 1. Moving Averages

- 조정 가능한 파라미터: window_size
- DataFrame 안에서 다른 column들로 바꾸어봐도 된다.
  - 16: accel_X_raw & 19: accel_Y_filtered
  - 17: accel_Y_raw & 20: accel_Y_filtered
  - 18: accel_Z_raw & 21: accel_Z_filtered
  - 22: gyro_X_raw & 25: gyro_X_filtered
  - 23: gyro_Y_raw & 26: gyro_Y_filtered
  - 24: gyro_Z_raw & 27: gyro_Z_filtered

- 평가
  - Lag/Delay가 심하다
  - axis-change에 취약할 것 같다

### 2. Kalman Filters

- 조정 가능한 파라미터:
  - process_var: Process Variance. 이 값이 크면 시스템 모델의 동작에 대한 불확실성이 크다는 것을 의미하고, 필터가 들어오는 측정 값을 더 신뢰하게 된다.
  - measurement_var: Measurement Variance. 이 값이 크면 측정값에 대한 불확실성이 크다는 것을 의미하고, 필터가 시스템의 동적 특성을 더 신뢰하게 된다.
  - initial_value: 변수 초기 추정 값
  - initial_estimate_error: 시작 추정 값의 오차에 대한 초기 추정 값

- 평가
  - 시스템과 노이즈의 특성을 잘 이해하면 이해할 수록 탁월한 성능이 예상된다.
  - axis-change에 취약하다는 평가가 있다.

### 3. 1D-CNN

- 작업중.
