class Patterns{
  int? kategoriId;
  String? kategoriAdi;
  String? kategoriIcerik;
  String? patternResim;
  Patterns({
    required this.kategoriId,
    required this.kategoriAdi,
    required this.kategoriIcerik,
    this.patternResim
    });

  static List<Patterns>patterns=[
  Patterns(
    kategoriId: 0, 
    kategoriAdi: "DESIGN PATTERNS", 
    kategoriIcerik:"Design Patterns (Tasarım Kalıpları), yazılım geliştirmede yaygın olarak karşılaşılan zorluklara yönelik geliştirilen, test edilen ve kanıtlanmış kod tasarımlarıdır.Tasarım kalıpları, hemen kullanmaya başlayabileceğiniz bir kütüphane veya çerçeve değildir. Daha önce birçok geliştiricinin üstesinden geldiği bir sorunla karşılaşıldığında kullanılması önerilen, yerleşik bir düşünme tekniğidir. Geliştiricilere çekirdek bir çözüm sunarak yeniden kullanılabilirliği sağlar ve farklı projelere farklı şekillerde uygulanabilirler.Geliştiricilerin daha temiz, daha okunabilir ve daha düzenli bir kod oluşturmalarına yardımcı olur. Bu sayede, yazılım tasarımındaki sorunları daha verimli ve etkili bir şekilde çözmeyi sağlar.",
    patternResim: "images/designpatterns.png"
    ),
  Patterns(
    kategoriId: 1, 
    kategoriAdi: "CREATIONAL PATTERNS", 
    kategoriIcerik:"Creational Patterns(Yaratıcı Kalıp), nesnelerin yaratılması ve yönetilmesi ile ilgilidir. Nesnelerin hangi sınıflarda hangi kurallarla oluşturulacağı, oluşturulan nesneler üzerine yapılacak olan güncellemeler ile ilgili durumları, bağımlılıkların azaltılması ve nesne oluştururken ihtiyaca göre en optimal çözümlerin üretilmesi için geliştirilmiş tasarımlardır.",
    ),
  Patterns(
    kategoriId: 2,
    kategoriAdi: "STRUCTURAL PATTERNS", 
    kategoriIcerik:"Structural Pattern(Yapısal Kalıp), bir yazılım sisteminin farklı bileşenlerini nasıl bir araya getireceğimizi, nasıl ilişkilendireceğimizi ve nasıl organize edeceğimizi belirlememize yardımcı olur. Yapısal desenler, programın temel yapısını ve bileşenler arasındaki ilişkileri açıkça tanımlamak için kullanılır. Bu desenler, yazılımın bakımını ve geliştirilmesini kolaylaştırmak ve kodun yeniden kullanılabilirliğini artırmak için önemlidir.",
    ),
  Patterns(
    kategoriId: 3, 
    kategoriAdi: "BEHAVIORAL PATTERNS", 
    kategoriIcerik:"Behavioral Pattern(Davranışsal Kalıp), yazılım tasarımında nesneler arasındaki işbirliği ve iletişimi düzenlemek için kullanılan tasarım desenleridir. Bu desenler, bir yazılım sistemindeki nesnelerin nasıl bir araya geleceğini, nasıl etkileşimde bulunacaklarını ve nasıl davranacaklarını tanımlar.",
    ),
  ];


}