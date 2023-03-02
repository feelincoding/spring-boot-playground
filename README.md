# spring-boot-playground

## ORM

- object-relational mapping
- 객체와 관계형 데이터베이스의 데이터를 자동으로 매핑(연결)해주는 프레임워크
- 개발자가 SQL을 직접 작성하지 않아도 됨
- 객체 지향적인 코드로 인해 재사용성이 높아짐
- J

## JPA

- Java Persistence API

## MyBatis

- SQL Mapper Framework
- SQL을 직접 작성해야 함

# Object Oriented Programming

## 4 Pillars of OOP

- Encapsulation: 캡슐화
  - 데이터와 함수를 하나로 묶어서 관리
  - 데이터를 보호하기 위해 사용
  - 추상화 제공
  - 재사용성 제공
  - 유지보수성 제공
- Inheritance: 상속
  - 부모 클래스의 속성과 기능을 자식 클래스가 물려받는 것
- Abstraction: 추상화
  - 공통적인 속성이나 기능을 묶어 이름을 붙이는 것
  - 객체의 속성 중 불필요한 것을 제거하고 중요한 것만을 표현하는 것, 위의 공통화와 같은 맥락
- Polymorphism: 다형성
  - 하나의 변수명, 함수명 등이 상황에 따라 다른 의미로 해석되는 것
    - 오버라이딩: 상위 클래스의 메소드를 하위 클래스에서 재정의하는 것
  - Unit을 상속받은 Soldier, Medic, Tank 등이 있다고 가정
    - Unit unit = new Soldier();

## SOLID

### `응집도는 높히고 결합도는 낮추자`

- Single Responsibility Principle: 단일 책임 원칙
  - 하나의 클래스는 하나의 책임만 가져야 한다.
- Open-Closed Principle: 개방-폐쇄 원칙
  - 확장에는 열려있고, 수정에는 닫혀있어야 한다.
- Liskov Substitution Principle: 리스코프 치환 원칙
  - 자식 클래스는 언제나 자신의 부모 클래스를 대체할 수 있어야 한다.
- Interface Segregation Principle: 인터페이스 분리 원칙
  - 한 클래스는 자신이 사용하지 않는 인터페이스는 구현하지 말아야 한다.
- Dependency Inversion Principle: 의존 역전 원칙
  - 의존 관계는 추상화에 의존해야지, 구체화에 의존하면 안된다.

## 디자인 패턴

### GoF 디자인 패턴

- 생성 패턴
  - 싱글톤 패턴: 어떠한 클래스(객체)가 유일하게 1개만 존재해야 하는 경우
    - 프린터
    - 데이터베이스 커넥션
    - TCP 소켓

- 구조 패턴
  - 어댑터 패턴: 호환성이 없는 인터페이스 때문에 함께 동작할 수 없는 클래스들이 함께 작동하도록 해주는 패턴
    - OCP 패턴을 따름F
  - 브리지 패턴
  - 컴포지트 패턴
  - 데코레이터 패턴
  - 퍼사드 패턴
  - 플라이웨이트 패턴
  - 프록시 패턴
- 행위 패턴
  - 책임 연쇄 패턴
  - 커맨드 패턴
  - 인터프리터 패턴
  - 반복자 패턴
  - 미디에이터 패턴
  - 메멘토 패턴
  - 옵저버 패턴
  - 상태 패턴
  - 스트래티지 패턴
  - 템플릿 메소드 패턴
  - 방문자 패턴
