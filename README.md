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
    - OCP 패턴을 따름
  - 데코레이터 패턴: 기존 클래스는 유지하지만 기능을 동적으로 추가할 수 있도록 해주는 패턴
    - OCP, DIP 패턴을 따름
  - 프록시 패턴: 대신해서 처리하는 것, client는 proxy로 부터 결과를 받음, cashe 기능 활용 가능
    - OCP, DIP 패턴을 따름
  - 퍼사드 패턴: 여러개의 객체와 그 객체들의 근간이 되는 실세 사용하는 객체 사이에 복잡한 의존 관계가 있을 때, 중간에 facade를 두고, 여기서 제공하는 interface만을 활용해 기능을 사용하는 방식

- 행위 패턴
  - 옵저버 패턴: 변화가 일어나면 미리 등록된 다른 객체에 통보해주는 패턴
    - event listener 에서 해당 패턴을 사용
  - 스트래티지 패턴: 전략패턴, 유사한 행위들을 캡슐화 해서 객체의 행위를 바꾸고 싶은 경우 직접 변경하는 것이 아닌 전략을 바꾸는 것으로 행위를 변경할 수 있도록 해주는 패턴
    - OCP, DIP 패턴을 따름

## REST(Representational State Transfer: 자원의 상태 전달)

- Client, Server: 클라이언트와 서버가 서로 독립적으로 분리 되어 있어야 한다.
- Stateless: 요청에 대해서 서버에 클라이언트의 상태를 저장하지 않아야 한다.
- Cache: 클라이언트는 서버의 응답을 캐시(임시저장)할 수 있어야 한다, 클라이언트가 캐시를 사용할 수 있어야 한다.-> 캐시를 사용하면 서버의 부하를 줄일 수 있다.
- 계층화: 클라이언트와 서버 사이에 게이트웨이, 프록시, 방화벽 등 다양한 계층이 존재할 수 있고 이를 확장 할 수 있어야 한다.
- Uniform Interface: 인터페이스의 일관성을 유지해야 한다.
  - Resource: URI로 표현되어야 한다.
  - Method: HTTP Method(GET, POST, PUT, DELETE)를 사용해야 한다.
  - Message: HTTP Message를 사용해야 한다.
  - Representation: JSON, XML, TEXT 등으로 표현되어야 한다.
- Code on Demand: 서버에서 클라이언트로 코드를 전송할 수 있어야 하며, 클라이언트는 이를 실행할 수 있어야 한다.
- REST Ful: REST API를 개발할 때 단순히 클라이언트의 요청에 대한 데이터만 응답 해주는 것이 아닌 관련된 리소스에 대한 Link 정보까지 같이 포함해서 응답해주는 것, 링크를 클릭하면 해당 리소스에 대한 정보를 받아올 수 있다.

# Spring

## Spring Triangle

- IoC/DI
  - IoC: Inversion of Control
    - 제어의 역전
    - 객체의 생성부터 생명주기까지 모든 제어권이 스프링 컨테이너에게 위임되는 것, 개발자가 new로 생성하고 관리하는 것이 아닌 스프링 컨테이너가 대신 생성하고 관리해준다.
  - DI: Dependency Injection
    - 의존성 주입
    - 의존성 주입은 IoC의 한 방법
    - 의존성 주입은 객체 간의 의존 관계를 빈 설정 정보를 바탕으로 컨테이너가 자동으로 연결해주는 것
    - 생성자 주입
    - setter 주입
    - 필드 주입
    - 일반 메소드 주입
    - @Autowired
    - @Inject
    - @Resource
- AOP
  - Aspect Oriented Programming
  - 관점 지향 프로그래밍
    - 관점 지향 프로그래밍은 관점이라는 기능을 모듈화하여 공통적으로 사용할 수 있도록 하는 프로그래밍 기법
- PSA
  - Portability Service Abstraction
