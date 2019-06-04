# IosStudy
IosStudy

## Constraints
각 디바이스 별로 위치와 크기를 조정하기 위해 사용 

**Add New Constraints** 
상하좌우 지정하면 크기별로 위치를 남기고 처리        
Constrain to margin은 체크 해제 (이해가 필요하다고 함)          
size inspector에서 constraints 적용 값을 알 수 있음        
컨트롤러 씬 옆에 오류 상황을 체크할 것         
(사이즈나 위치를 잡을 수 없을 때 발생)         
직접 폭과 높이를 지정 할 수도 있음        

**Safe Area**
제스쳐나 노치 때문에 상하단을 남김        
특별한 경우가 아니면 변경하지 않는 것을 권장함        

전체뷰로 만들고 싶을때는 Trailing Alignment Constraint의 First Item 부분을 Safe Area가 아닌 SuperView로 잡으면 된다        

오류 상황일때        
Reset to Suggested Constraints 시스템에서 알아서 처리해줌        
(원하지 않는 형태로 만들어줄때가 있어사용하지 않음)        
Clear Constraints 전체 Constraints 제거        
Auto layout은 오류 상황에서도 일단 실행되긴함. (권장 X)        

**Add New Alignment Constraints**
Horizontally in Container        
Vertically in Container         
둘다 부모 뷰로 정렬함        

## Constraints Equal
2개 이상의 뷰를 둘때 다른 하나의 constraints 만 걸었을때 오류남,        
크기에 대한 정의도 필요함        

Equal Widths        
Equal Heights        
같은 크기로 다중 오브젝트를 설정함        
추론 할 수 있는 대상은 따로 오류를 생성하지 않음 (사이에 있는 오브젝트의 경우)        

관계 설정은 마우스 오른쪽 클릭으로 이동 설정        
Edit 상세 뷰에서 Equal Width에서 값 변경은 관계의 폭 값의 변경이 있음.         

## Align        
두개의 오브젝트 이상 정렬 가능. 아 배고프다        
Leading Edges        
Trailing Edges        
Top Edges        
Bottom Edges        

## Multiplier        
Option누르면 간격 보여줌        
시작 포인트 * 배율 + constant        
상대적인 개념이기때문에 관계에 대한 크기만 설정가능        

