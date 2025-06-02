import 'package:flutter_yeni/Model/Patterns.dart';

class Kategori{
  int? kategoriId;
  int? altKategoriId;
  String? altKategoriAdi;
  String? altKategoriIcerik;
  List<String>? altKategoriAdiList;
  List<String>? altKategoriIcerikList;
  List<String>? linkler;
  Map<String, String>? kodlar;
  String? altKategoriResim;
  List<String>? umlDiagram;
  // resim?
  Kategori({required this.kategoriId,required this.altKategoriId, required this.altKategoriAdi,required this.altKategoriIcerik,this.altKategoriResim,this.altKategoriAdiList,this.altKategoriIcerikList,this.linkler,this.kodlar,this.umlDiagram});
  
  static List<Kategori> kategoriler=[
      Kategori(
        kategoriId:Patterns.patterns[1].kategoriId, 
        altKategoriId: 0,
        altKategoriAdi: "Singleton", 
        altKategoriIcerik:"En basit tasarım desenlerinden biridir. Nesne oluşturmayı sağlayan tek bir sınıf içerir ve bu sınıf sadece tek bir nesnenin yaratılmasını sağlar ve diğer sınıfların(yeni nesne üretmeleri yerine) bu nesneye erişebilmelerine olanak sağlar. Dosya işlemleri, veri tabanı bağlantıları, loglama işlemleri gibi karmaşık sistemlere erişimi kontrol eden sınıflarda Singleton örneği görmek mümkündür. Bu tarz sınıflardan yalnızca bir instance bulunması sistem için yeterli olacaktır. Peki bir sınıfın yalnızca bir nesnesi olmasını nasıl sağlayabiliriz ? Nesne üretimlerini Constructor metotlar sayesinde gerçekleştirdiğimizi düşünürsek, onu private olarak oluşturmak, dışarıdan nesne oluşturmanın önüne geçecektir. Constructor, private tanımlandığına göre nesne sınıf içerisinde oluşturulmalıdır.",
        altKategoriResim: "images/singleton.png",
        altKategoriAdiList: [
        "Lazy Singleton",
        "Thread Safe Lazy Singleton",
        "Double Checked Locking",
        
      ],
        altKategoriIcerikList: [
        "Lazy Singleton, Singleton tasarım deseninin bir türüdür ve bir sınıfın yalnızca bir örneğini oluştururken örneğin oluşturulmasını geciktirir. Bu, uygulama ilk kez bu sınıfa erişildiğinde örneğin oluşturulmasını sağlar ve daha sonra her erişimde aynı örneği döndürür. Böylece, uygulama boyunca yalnızca bir örnek oluşturulur ve paylaşılır. Lazy Singleton, ihtiyaç duyulduğunda örnek oluşturulması gereken durumlarda yararlıdır. Örneğin, uygulamanızın başlatılması veya çalışması için gereken bir kaynağa erişim sağlamak istiyorsanız ve bu kaynağa erişimin maliyeti yüksekse, bu kaynağın oluşturulmasını erteleyebilirsiniz. Lazy Singleton deseni, uygulamanın performansını artırabilir ve kaynakların verimli kullanılmasını sağlayabilir. Lazy Singleton deseni, özellikle büyük ve karmaşık uygulamalarda yaygın olarak kullanılır. Ancak, çoklu iş parçacığı ortamlarında dikkatli bir şekilde kullanılmalıdır, çünkü çoklu iş parçacığı ortamlarında Lazy Singleton'ın doğru bir şekilde uygulanması zor olabilir ve aynı anda birden fazla örnek oluşturulabilir. Bu durumda, Lazy Singleton'ı çoklu iş parçacığı ortamlarına uygun hale getirmek için senkronizasyon teknikleri kullanılmalıdır.",
        "Thread Safe Lazy Singleton, Singleton tasarım deseninin bir türüdür ve çoklu iş parçacığı ortamlarında güvenli bir şekilde kullanılabilmesi için tasarlanmıştır. Bu desen, Lazy Singleton desenini kullanırken çoklu iş parçacığı sorunlarını önlemek için senkronizasyon mekanizmalarını kullanır.Normal Lazy Singleton deseni, ihtiyaç duyulduğunda örnek oluşturmayı geciktirir. Ancak, çoklu iş parçacığı ortamlarında bu yaklaşım, birden çok iş parçacığının aynı anda örneğin oluşturulmasına neden olabilir ve bu da istenmeyen sonuçlara yol açabilir. Thread Safe Lazy Singleton, bu sorunu çözmek için senkronizasyon sağlar ve aynı anda yalnızca bir iş parçacığının örneği oluşturulmasını garanti eder.Thread Safe Lazy Singleton genellikle çeşitli senkronizasyon teknikleri kullanılarak uygulanır. Bunlar arasında kilitler (locks), senkronizasyon blokları veya yarımsal (lazy) senkronizasyon teknikleri gibi yöntemler bulunabilir. Bu teknikler, farklı iş parçacıklarının aynı anda örnek oluşturmasını engelleyerek Singleton örneğinin güvenli bir şekilde oluşturulmasını sağlar.Thread Safe Lazy Singleton deseni, özellikle çoklu iş parçacığı ortamlarında kullanıldığında uygulamanın doğruluğunu ve güvenilirliğini artırabilir. Ancak, bu desenin performansı normal Lazy Singleton desenine göre daha düşüktür, çünkü senkronizasyon maliyeti vardır. Bu nedenle, uygulamanın performans gereksinimleri göz önünde bulundurularak doğru senkronizasyon tekniği seçilmelidir.",
        "Double Checked Locking, çoklu iş parçacığı ortamlarında Lazy Initialization (Tembel Başlatma) yöntemini kullanırken performansı artırmak için kullanılan bir optimizasyon tekniğidir. Bu teknik, Singleton deseninde sınıfın ilk oluşturulması sırasında senkronizasyon maliyetini azaltmayı hedefler.Normal Lazy Initialization tekniğinde, sınıfın ilk örneği oluşturulmadan önce tüm iş parçacıklarının beklemesini sağlayan bir kilit mekanizması kullanılır. Bu, çoklu iş parçacığı ortamlarında etkili olmasına rağmen, ilk örneğin oluşturulması gerektiğinde tüm iş parçacıklarının beklemesine neden olabilir, bu da performansı düşürebilir.Double Checked Locking, bu sorunu çözmek için senkronizasyonu yalnızca ilk örneğin oluşturulması gerektiğinde sağlar. İlk örneğin oluşturulması sırasında, sadece bir iş parçacığının kilitlenmesini sağlar ve diğer iş parçacıklarının beklemesini önler. Ardından, diğer iş parçacıkları sınıfın örneğini kullanırken senkronizasyon maliyeti olmadan erişebilirler.Double Checked Locking tekniği genellikle Java ve C++ gibi dillerde kullanılır. Ancak, dikkatli bir şekilde uygulanmalıdır çünkü bazı dil ve derleyici optimizasyonları nedeniyle bazı durumlarda hatalı sonuçlara veya istenmeyen davranışlara neden olabilir. Bu nedenle, bu teknik kullanılırken dil ve platformun özelliklerinin dikkate alınması önemlidir.",
        
      ],
        linkler: [
          "https://www.youtube.com/watch?v=C6Pk-tfBRX0",
          "https://www.youtube.com/watch?v=sJ-c3BA-Ypo",
          ],
        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
      ),
      Kategori(
        kategoriId:Patterns.patterns[1].kategoriId, 
        altKategoriId: 1, 
        altKategoriAdi: "Factory Method",
        altKategoriIcerik: "En önemli design patternlardan bir tanesidir. Birbirleri ile benzer yapıda olan nesnelerin nerede en verimli şekilde yaratılacağı probleminden dolayı ortaya çıkmıştır. Factory Pattern, aynı abstract class veya interface’den türeyen nesnelerin üretiminin bir class üzerinden sağlanmasıdır. Üretilecek olan nesnenin hangi class’tan olacağına subclass’lar karar verir. Factory Design Pattern, nesne yaratma işlemi için bir interface tasarlanmasını gerektirir ve subclass’ların nesne üretmesine olanak sağlar. Ayrıca, hangi sınıf nesnesinin oluşacağını da subclass’lar kendileri belirler.",
        altKategoriResim: "images/factorymethod.png",
        altKategoriAdiList: [
        "Factory Method Ne Zaman Kullanılmalı?",
        "Factory Method Bileşenleri Nelerdir?",
        "Factory Method Kullanmadığımız Örnek",
        "Bu Kullanımın Yarattığı Sorunlar",
        "Factory Method ile Çözümler",
      ],
        altKategoriIcerikList: [
        "Nesne oluşturmayı kapsüllemek istediğinizde:\nKarmaşık bir nesne oluşturma süreciniz varsa veya süreç koşullara göre değişiklik gösterebiliyorsa, bu mantığı bir fabrika yönteminde kapsüllemek, istemci kodunu basitleştirebilir ve yeniden kullanılabilirliği destekleyebilir.\nİstemci kodunu somut sınıflardan ayırmak istediğinizde:\nFabrika Yöntemi Desenini kullanmak, somut sınıfların belirli uygulama ayrıntılarını istemci kodundan soyutlayarak bir arayüz veya soyut sınıf aracılığıyla nesneler oluşturmanıza olanak tanır. Bu, gevşek bağlantıyı teşvik eder ve mevcut müşteri kodunu etkilemeden sistemin değiştirilmesini veya genişletilmesini kolaylaştırır.\nBirden fazla ürün varyasyonunu desteklemeniz gerektiğinde:\nUygulamanızın bir ürünün farklı varyasyonlarını oluşturması gerekiyorsa veya gelecekte yeni ürün türleri tanıtılacaksa, Fabrika Yöntemi Modeli, aşağıdakiler için fabrika yöntemlerini tanımlayarak bu varyasyonları karşılamak için esnek bir yol sağlar: her ürün tipi.\nÖzelleştirmeyi veya yapılandırmayı desteklemek istediğinizde:\nFabrikalar, yapılandırma mantığını kapsüllemek için kullanılabilir; böylece istemcilerin, fabrika yöntemine parametreler veya yapılandırma seçenekleri sağlayarak oluşturma sürecini özelleştirmelerine olanak sağlanır.\n",
        "1.Oluşturucu\nBu, fabrika yöntemini bildiren soyut bir sınıf veya arayüzdür. Oluşturucu genellikle nesneler oluşturmak için bir factory method içerir. Ayrıca oluşturulan nesnelerle çalışan diğer yöntemleri de içerebilir.\n2.Somut Oluşturucu\nSomut Oluşturucu sınıfları, belirli tipte nesneler oluşturmak için factory method'ı uygulayan Oluşturucu'nun alt sınıflarıdır. Her Somut Oluşturucu, belirli bir ürünü oluşturmaktan sorumludur.\n3.Ürün\nBu,factory method'un oluşturduğu nesneler için arayüz veya soyut sınıftır.\n4.Somut Ürün\nSomut Ürün sınıfları, fabrika yönteminin oluşturduğu gerçek nesnelerdir. Her Somut Ürün sınıfı, Ürün arayüzünü uygular veya Ürün soyut sınıfını genişletir.\n",
        "images/factorymethodresim.png",
        "Sıkı Bağlılık(Tight Coupling):\nİstemci sınıfı, oluşturulması gereken araç türüne bağlı olarak doğrudan somut sınıfları (TwoWheeler ve FourWheeler) örnekler. Bu, istemci ile somut sınıflar arasında sıkı bir bağlılık oluşturur ve kodun bakımını ve genişletilmesini zorlaştırır.\nTek Sorumluluk Prensibinin İhlali (Violation of Single Responsibility Principle) (SRP):\nİstemci sınıfı, hangi tür aracın örnekleneceğini belirlemekle kalmaz, aynı zamanda araç nesnesinin yaşam döngüsünü (örneğin, temizleme) yönetir. Bu, Tek Sorumluluk Prensibinin ihlal edilmesine neden olur; çünkü bir sınıfın değişmesinin tek bir nedeni olmalıdır.\nSınırlı Ölçeklenebilirlik(Limited Scalability):\nYeni bir araç türü eklemek, İstemci sınıfını değiştirmeyi gerektirir; bu da Açık-Kapalı Prensibinin ihlal edilmesine neden olur. Bu tasarım, mevcut kodu değiştirmeden yeni araç türlerini barındıramadığı için ölçeklenebilir değildir.\n",
        "Factory Method Arayüzü Tanımlama:\nAraçlar oluşturmak için bir VehicleFactory arayüzü veya soyut sınıf oluşturun ve araçlar oluşturmak için bir yöntem içerisinde tanımlayın.\nSomut Fabrikaları Uygulama: VehicleFactory arayüzünü uygulayan ve belirli türde araç örnekleri oluşturmak için yöntemler sağlayan somut fabrika sınıflarını uygulayın (TwoWheelerFactory ve FourWheelerFactory).\nİstemciyi Yeniden Düzenleme:\nİstemci sınıfını, araçları doğrudan örneklemek yerine bir VehicleFactory örneği alacak şekilde yeniden düzenleyin. İstemci, bir aracı fabrikadan talep eder ve araç türlerine dayalı koşullu mantığı ortadan kaldırır.\nEsnekliği Artırma:\nBu yaklaşımla, yeni araç türleri eklemek, mevcut istemci kodunu değiştirmeden yeni bir araç türü için yeni bir fabrika sınıfı oluşturmak kadar kolay olacaktır.\n"
      ],
        linkler: [
          "https://www.youtube.com/watch?v=EcFVTgRHJLM",
          "https://www.youtube.com/watch?v=EdFq_JIThqM",
          "https://www.youtube.com/watch?v=sHfrmAXtMWM",
        ],
      kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
      umlDiagram:["images/FactoryMethodDesignPattern.jpg"],
      ),
      Kategori(
          kategoriId:Patterns.patterns[1].kategoriId, 
          altKategoriId: 2, 
          altKategoriAdi: "Abstract Factory",
          altKategoriIcerik: "İlişkili nesnelerin bir arada yaratılmasını sağlar.Soyut bir arayüz veya sınıf sağlayan ve bu arayüzü veya sınıfı uygulayan alt sınıflar aracılığıyla farklı nesne varyasyonlarının oluşturulmasını destekleyen bir tasarım desenidir. Bu desen, bir grup birbirleriyle ilişkili veya bağımlı nesnenin yaratılmasını sağlar ve bu nesnelerin nasıl oluşturulacakları ile ilgili ayrıntıları istemci kodundan gizler. İstemci kod, soyut fabrika arayüzü üzerinden nesneleri oluşturur ve bu nesnelerin gerçek sınıflarını bilmeden kullanabilir. Abstract Factory pattern, kodun daha esnek, bakımı daha kolay ve yeniden kullanılabilir olmasını sağlar. Örneğin, bir araba fabrikası soyut fabrika deseniyle araba, motor ve lastik gibi ilgili nesneleri bir arada yaratabilir.",
          altKategoriResim: "images/abstractfactory.png",
          altKategoriAdiList: [
            "Abstract Factory Interface",
            "Concrete Factories",
            "Client Flexibility",
          ],
          altKategoriIcerikList: [
            "Abstract Factory Interface, ilişkili veya bağımlı nesnelerin bir arada oluşturulmasını sağlayan soyut bir arayüzdür. Bu arayüz, nesnelerin nasıl oluşturulacağına dair detayları gizler ve istemci kodun yalnızca bu soyut arayüzü kullanarak nesne yaratmasını sağlar. Böylece nesnelerin somut sınıfları istemci tarafından bilinmez ve bağımlılık azaltılmış olur.",

            "Concrete Factories, soyut fabrika arayüzünü uygulayan somut sınıflardır. Her bir somut fabrika, belirli bir ürün ailesine ait nesneleri üretmekle sorumludur. Örneğin, bir araba fabrikasında 'SedanFactory' ve 'SUVFactory' gibi somut fabrikalar olabilir ve bunlar kendi ailelerine özgü araba parçalarını (motor, kapı, lastik gibi) üretirler. Bu sayede ürün aileleri arasında tutarlılık sağlanır.",

            "Client Flexibility (İstemci Esnekliği), istemci kodun soyut fabrika arayüzü üzerinden nesne üretmesini sağlar. İstemci, somut sınıflarla doğrudan ilişki kurmaz, bu da kodun esnek, kolay genişletilebilir ve bakımı kolay hale gelmesini sağlar. Yeni bir ürün ailesi eklendiğinde istemci kodda değişiklik yapılmasına gerek kalmaz; sadece yeni bir somut fabrika oluşturulur ve kullanılır.",
          ],
          linkler: [
            "https://www.youtube.com/watch?v=J2L3vJfxs0I",  // Abstract Factory Pattern – Design Patterns (ep 5)
            "https://www.youtube.com/watch?v=v-GiuMmsXj4",  // Abstract Factory Pattern in Java – Geekific
            "https://www.youtube.com/watch?v=KbA9BEjjC1A",  // Abstract Factory Pattern Real World Example – CodeAcademy
          ],
          kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
          ),
      Kategori(
          kategoriId:Patterns.patterns[1].kategoriId, 
          altKategoriId: 3, 
          altKategoriAdi: "Builder",
          altKategoriIcerik: "Basit nesneleri kullanarak karmaşık nesnelerin adım adım oluşturulduğu bir tasarım desenidir. Genellikle nesnelerin oluşturulması için kullanılan birçok parametre veya seçenek varsa veya nesne oluşturma süreci karmaşıksa kullanılır. Builder pattern, Nesne oluşturmayı çok adımlı ve modüler hale getirir, böylece farklı özellik setlerine sahip nesnelerin oluşturulmasını kolaylaştırır.Örneğin, grafik arayüz öğeleri, belge oluşturma işlemleri veya karmaşık veri yapıları oluşturulurken Builder pattern kullanılabilir.",
          altKategoriResim: "images/builder.png",
          altKategoriAdiList: [
            "Builder Interface",
            "Concrete Builder",
            "Director",
            "Product",
          ],
          altKategoriIcerikList: [
            "Builder Interface, karmaşık bir nesnenin farklı parçalarının oluşturulması için gerekli adımları tanımlayan soyut bir arayüzdür. Bu arayüz, ürünün çeşitli bileşenlerinin nasıl oluşturulacağını belirtir ancak bu adımların nasıl uygulanacağına dair detayları içermez.",

            "Concrete Builder, Builder arayüzünü uygulayan somut sınıftır ve ürünün parçalarını adım adım oluşturur. Her somut builder, farklı bir ürün varyasyonu veya konfigürasyonu oluşturabilir. Örneğin, bir bilgisayar yapılandırma sistemi için 'GamingPCBuilder' ve 'OfficePCBuilder' olabilir.",

            "Director, Builder arayüzünü kullanarak ürünün oluşturulma sürecini yönetir. Director, adımları doğru sırayla çağırarak karmaşık nesnenin oluşturulmasını koordine eder. İstemci kod doğrudan Director üzerinden ürünün nasıl inşa edileceğini kontrol eder.",

            "Product, Builder tarafından oluşturulan karmaşık nesnedir. Bu nesne genellikle birçok parçadan oluşur ve Builder aracılığıyla bu parçalar oluşturulup bir araya getirilir. Builder Pattern, ürünün oluşturulma sürecini istemciden ayırır ve farklı konfigürasyonlarla nesneler oluşturulmasını kolaylaştırır.",
          ],
          linkler: [
            "https://www.youtube.com/watch?v=Gjhj3ZBR4n8",  // Builder Pattern – Design Patterns (ep 6)
            "https://www.youtube.com/watch?v=V9XyC3r0xk4",  // Builder Design Pattern in Java – Geekific
            "https://www.youtube.com/watch?v=3tIqpEmWMLQ",  // Builder Pattern Real World Example – CodeAcademy
          ],
          kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
          ),
      Kategori(
        kategoriId:Patterns.patterns[1].kategoriId, 
        altKategoriId: 4, 
        altKategoriAdi: "Prototype",
        altKategoriIcerik: "Prototype pattern, bir nesnenin klonlanması için kullanılan bir tasarım desenidir. Aynı sınıftan üretilecek olan ve pek çok ortak özelliği bulunan benzer nesnelerin üretimi sırasında gerçekleşebilecek karışıklıkları engellemek ve üretim maliyetini azaltmak amacı ile kullanılır. Özellikle oyun yazılımlarında kullanımını görmek mümkündür. Örneğin, bir savaş oyununda aynı askerden yüzlerce tane bulunurken bu askerlerin yalnızca kimlik numaraları farklıdır. Her defasında sıfırdan asker nesnesi yaratmak, constructor’u baştan sonra tekrar tekrar gerekli bilgilerle doldurmak yerine var olan asker nesneleri kopyalanır ve set metodu ile yalnızca kimlik numaraları vs. gibi değişecek bilgiler değiştirilir.",
        altKategoriResim: "images/prototype.png",
        altKategoriAdiList: [
          "Prototype Interface",
          "Concrete Prototype",
          "Cloning Process",
          "Client Usage",
        ],
        altKategoriIcerikList: [
          "Prototype Interface, nesnelerin kopyalanabilmesi için bir klonlama metodunu (genellikle 'clone' metodu) tanımlar. Bu arayüz, yeni nesne oluşturma maliyetini azaltmak amacıyla mevcut nesnelerden hızlı ve kolay kopyalar üretmeyi sağlar.",

          "Concrete Prototype, Prototype arayüzünü uygulayan ve kendi kendini klonlayabilen somut sınıftır. Bu sınıf, klonlama sırasında nesnenin iç durumunu yeni kopyaya aktarır ve gerektiğinde derin veya yüzeysel kopyalama yapabilir.",

          "Cloning Process, mevcut bir nesnenin birebir kopyasının oluşturulma işlemidir. Bu süreç, yeni bir nesne yaratmak için standart oluşturucular kullanmaktan daha hızlı ve kaynak açısından daha verimli olabilir. Özellikle karmaşık ve pahalı nesnelerin çoğaltılmasında tercih edilir.",

          "Client Usage, istemcinin nesneleri doğrudan yaratmak yerine, önceden var olan prototip nesneleri klonlayarak yeni nesneler oluşturmasıdır. Bu, kodun esnekliğini artırır ve nesne oluşturma sürecini soyutlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=AFbZhRL0Uz8", // Prototype Design Pattern – Geekific
          "https://www.youtube.com/watch?v=Cl_Gjj80gPE", // Prototype Pattern – Design Patterns (ep 7)
          "https://www.youtube.com/watch?v=FjI4Gn7fQ1M", // Prototype Design Pattern Real World Example
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[2].kategoriId, 
        altKategoriId: 5, 
        altKategoriAdi: "Adapter",
        altKategoriIcerik: "Adapter tasarım deseni, bir sınıfın arabirimini, başka bir sınıfın beklediği arabirime dönüştürmek için kullanılan bir yapısal desendir. Bu desen, uyumsuz arabirimlere sahip olan sınıflar arasında uyum sağlamak için kullanılır.Mevcut kodu yeniden kullanabilir hale getirir ve sınıflar arasındaki sıkı bağlantıları azaltarak sistemdeki esnekliği artırır.Adapter deseni, özellikle farklı kütüphaneler arasında uyum sağlamak veya eski kodu yeni sistemlere entegre etmek gerektiğinde kullanışlıdır. Örneğin, bir uygulama eski bir veri tabanı API'sini kullanıyorsa ve yeni bir veri tabanı API'sine geçiş yapmak istiyorsa, Adapter deseni eski API'yi yeni API'ye uyumlu hale getirebilir.",
        altKategoriResim: "images/adapter.png",
        altKategoriAdiList: [
          "Target Interface",
          "Adapter Class",
          "Adaptee",
          "Client Interaction",
        ],
        altKategoriIcerikList: [
          "Target Interface, istemcinin beklediği ve kullandığı standart arayüzdür. Bu arayüz, istemcinin nesnelerle nasıl iletişim kuracağını belirler ve genellikle mevcut sistemin veya uygulamanın temel yapıtaşlarından biridir. İstemci, bu arayüz sayesinde nesnelerle doğrudan ve tutarlı bir şekilde etkileşime geçer. Ancak bazen elinizdeki mevcut sınıflar bu arayüze uymayabilir, işte Adapter Pattern burada devreye girer.",

          "Adapter Class, uyumsuz olan mevcut sınıfın (Adaptee) arayüzünü, istemcinin beklediği Target Interface’e dönüştüren ara sınıftır. Adapter, adaptee'nin metodlarını çağırarak onların işlevselliğini istemciye uygun hale getirir. Bu sayede, istemci adaptee’nin karmaşık ya da farklı arayüz detaylarını bilmek zorunda kalmaz ve adapter sayesinde her şey sorunsuz çalışır. Bu sınıf genellikle adaptee nesnesini içeren bir referansa sahiptir ve çağrıları doğru metoda yönlendirir.",

          "Adaptee, sistemde mevcut olan fakat istemcinin kullanmak istediği arayüzle uyumlu olmayan sınıftır. Bu sınıf, kendi arayüzüyle iş yapar ve doğrudan istemci tarafından kullanıldığında uyumsuzluk yaratır. Adapter pattern sayesinde, adaptee’nin mevcut işlevselliği korunurken istemcinin ihtiyacı olan arayüz ile uyumlu hale getirilir. Böylece kod tekrarına gerek kalmadan mevcut kod yeniden kullanılabilir hale gelir.",

          "Client Interaction, istemcinin Adapter üzerinden Target Interface’i kullanarak işlemlerini gerçekleştirmesidir. İstemci, adapter sayesinde arka plandaki adaptee’nin farklı arayüzüyle uğraşmak zorunda kalmaz. Bu durum, istemci kodun daha temiz, anlaşılır ve sürdürülebilir olmasını sağlar. Ayrıca, farklı adaptee nesneleri için farklı adapter sınıfları oluşturularak sistemin esnekliği ve genişletilebilirliği artırılır. Bu sayede istemci yeni sınıflarla uyumlu hale getirilirken mevcut kodda değişiklik yapmaya gerek kalmaz.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=2PKQtcJjYvc", // Adapter Design Pattern – Geekific
          "https://www.youtube.com/watch?v=6vKn5eKGz9g", // Adapter Pattern – Design Patterns (ep 5)
          "https://www.youtube.com/watch?v=4pO-HcG2igk", // Adapter Pattern - Refactoring Guru (Animated)
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[2].kategoriId, 
        altKategoriId: 6, 
        altKategoriAdi: "Composite",
        altKategoriIcerik: "Kendi içlerinde birbirlerinden farklı olan bir grup nesnenin sanki tek bir bütün nesneymiş gibi kullanılabilmesine imkan sağlayan tasarım kalıbıdır.Composite Pattern, nesneleri bir ağaç yapısında birleştirip uygulamanın genelindeki parça bütün ilişkisini yeniden düzenleyip şekillendirmektir.Yazılımcı, kullanıcının isteği doğrultusunda aynı türden veya farklı türlerden bir nesne topluluğu kullanmak zorunda ise, karmaşadan ve karışıklıktan kurtulmak için, tüm parçalar ile tek tek uğraşmaktansa composite pattern kullanabilir.",
        altKategoriResim: "images/composite.png",
        altKategoriAdiList: [
          "Component Interface",
          "Leaf",
          "Composite",
          "Client",
        ],
        altKategoriIcerikList: [
          "Component Interface, hem yaprak (Leaf) hem de bileşik (Composite) nesnelerin ortak arayüzünü tanımlar. Bu arayüz, nesnelerin ortak işlemlerini belirtir ve istemcinin karmaşık ve basit nesneleri aynı şekilde işlemesini sağlar. Böylece istemci, nesneleri tek tek ya da grup halinde aynı metotlarla yönetebilir.",

          "Leaf, yaprak düğüm olarak adlandırılan, hiyerarşide en alt seviyedeki nesnedir. Leaf nesneler, Composite nesneler gibi başka alt nesneler içermezler ve belirli işlevleri yerine getirirler. Leaf sınıfı, Component arayüzünü uygular ve temel işlemleri gerçekleştirir. Örneğin, bir dosya sistemi hiyerarşisinde dosyalar Leaf olarak düşünülebilir.",

          "Composite, bir veya daha fazla Component nesnesini içeren ve onları yönetebilen bileşik yapıdır. Composite nesneler, içerdikleri alt nesneler üzerinde toplu işlemler yapabilir ve Component arayüzünü uygulayarak istemcinin karmaşık hiyerarşilerle çalışmasını kolaylaştırır. Composite, alt bileşenleri ekleme, çıkarma ve dolaşma gibi operasyonları destekler.",

          "Client, Component arayüzü üzerinden hem Leaf hem de Composite nesnelerle etkileşime girer. Client, nesne hiyerarşisinin detaylarından bağımsız olarak nesneleri yönetir ve işlem yapar. Bu sayede karmaşık nesne ağaçları, basit nesnelerle aynı şekilde kullanılabilir ve sistemin esnekliği ile genişletilebilirliği artar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=EWDmWbJ4wRA", // Composite Design Pattern – Geekific
          "https://www.youtube.com/watch?v=ijHZ5jBtxLA", // Composite Pattern – Design Patterns (ep 9)
          "https://www.youtube.com/watch?v=Vgkxe84Ob5I", // Composite Design Pattern - Simplified (Code with Mosh)
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
      ),
      Kategori(
        kategoriId:Patterns.patterns[2].kategoriId, 
        altKategoriId: 7, 
        altKategoriAdi: "Proxy", 
        altKategoriIcerik: "Proxy Design Pattern, bir nesneye olan erişimin kontrol altına alınması amacı ile kullanılır. İstemcilerin direkt olarak ilgili nesneye ulaşması yerine bir vekil aracılığı ile (dolaylı olarak) nesneye ulaşmasını sağlar. Vekil nesne, yalnızca gerekli durumlarda asıl nesne ile iletişime geçer ve ilgili işlemler gerçekleştirilir.Geliştirdiğiniz bir uygulamada, bellek üzerinde büyük kaynak harcayan bir nesneye ihtiyaç duyduğunuzu varsayalım. Örneğin bu nesne bir resim üzerine işlem yapıyor olabilir. Haliyle böyle maliyetli bir nesneyi her zaman bellekte tutmak istemezsiniz. Sadece istemciden talep geldiği zaman nesneyi oluşturup, metodu çağırıp, işi bittiğinde de nesneyi bellekten kaldıran bir yapıya ihtiyacınız var. Diğer bir örnek ise bir nesne, çok önemli sorumlulukları gerçekleştiriyor olabilir. Bu nesneye diğer nesneler tarafından doğrudan erişilmesi güvenlik problemlerine sebebiyet verebilir.Güvenlik açısından sakıncalı durumlarda ise bu olumsuzluk, sistemin çökmesine kadar giden problemlere dahi sebep olabilir.İşte böyle durumlarda bir vekile ihtiyacınız var. Bu vekil yalnızca gerçekten ihtiyaç duyulduğu anda temsil ettiği neyseye erişim sağlayacak ve işlemleri gerçekleştirecektir.",
        altKategoriResim: "images/proxy.png",
        altKategoriAdiList: [
          "Subject Interface",
          "Real Subject",
          "Proxy",
          "Client Interaction",
        ],
        altKategoriIcerikList: [
          "Subject Interface, gerçek nesne (Real Subject) ile proxy'nin uyduğu ortak arayüzdür. Bu arayüz, istemcinin proxy veya gerçek nesne ile aynı şekilde etkileşim kurmasını sağlar. Böylece istemci, hangi nesne ile çalıştığını bilmeden arayüzü kullanabilir.",

          "Real Subject, proxy tarafından temsil edilen gerçek nesnedir. Gerçek nesne, asıl işlevselliği yerine getirir ve proxy'nin kontrol ettiği kaynak veya işlemleri yönetir. Örneğin, büyük ve maliyetli nesneler, dosya erişimleri veya uzak servisler Real Subject olabilir.",

          "Proxy, Real Subject nesnesine erişimi kontrol eden ve gerektiğinde gerçek nesneye isteği ileten yapıdır. Proxy, erişim kontrolü, yük dengeleme, önbellekleme, geciktirme (lazy loading) gibi ek işlevler sağlar. İstemci, proxy ile etkileşime geçerek gerçek nesnenin karmaşıklığını görmezden gelir.",

          "Client Interaction, istemcinin Subject arayüzü üzerinden proxy ile etkileşime geçmesidir. İstemci, proxy'nin arkasındaki gerçek nesneye doğrudan erişmeden işlemlerini gerçekleştirir. Bu desen, kaynak kullanımını optimize eder ve sistemin güvenliğini artırır.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=ClDnaExkYzU", // Proxy Pattern – Design Patterns (ep 13)
          "https://www.youtube.com/watch?v=DFY8t4QxYzE", // Proxy Design Pattern in 5 Minutes - Geekific
          "https://www.youtube.com/watch?v=FOeV3mLGHUs", // Proxy Design Pattern - Refactoring Guru (Code example)
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
      ),
      Kategori(
        kategoriId:Patterns.patterns[2].kategoriId, 
        altKategoriId: 8,  
        altKategoriAdi: "Fly Weight", 
        altKategoriIcerik: "Flyweight tasarım deseni, benzer nesnelerin tekrar tekrar oluşturulması yerine ortak bellek alanlarını kullanarak bellek kullanımını azaltan bir yapısal tasarım desenidir. Özellikle, çok sayıda benzer nesnenin oluşturulması durumunda, bu desen bellek kullanımını optimize etmek için idealdir. Flyweight deseni, her bir nesnede tüm verileri tutmak yerine, ortak kısımları paylaşarak bellek kullanımını azaltır. Örneğin, bir uygulama içinde çok sayıda benzer metin dizisi bulunuyorsa, her metin dizisini ayrı ayrı saklamak yerine, ortak bir String Pool içinde saklamak daha verimli olabilir. Böylece, bellekte daha az yer kaplayarak daha fazla nesne depolanabilir. Flyweight tasarım deseni, özellikle bellek tüketimini azaltmak ve performansı artırmak istendiği durumlarda kullanılır. Bu desen, özellikle grafiksel kullanıcı arayüzleri gibi bellek yoğun uygulamalarda sıklıkla kullanılır.", 
        altKategoriResim: "images/flyweight.png",
        altKategoriAdiList: [
          "Flyweight Interface",
          "Concrete Flyweight",
          "Flyweight Factory",
          "Client",
        ],
        altKategoriIcerikList: [
          "Flyweight Interface, paylaşılan nesnelerin ortak arayüzünü tanımlar. Bu arayüz, nesnelerin durumlarını yönetmek ve istemcinin taleplerine yanıt vermek için gerekli metodları içerir. Flyweight pattern, çok sayıda küçük nesnenin etkili bir şekilde paylaşılması için bu ortak arayüzü kullanır.",

          "Concrete Flyweight, paylaşılan nesnelerin gerçek uygulamasıdır. Bu nesneler, değiştirilemez (intrinsic) durumları tutar ve dışsal (extrinsic) durum istemci tarafından yönetilir. Concrete Flyweight, hafıza kullanımını azaltmak için birden çok nesne tarafından ortak kullanılır. Örneğin, bir grafik uygulamasında aynı karakterin birçok yerde görünmesi Concrete Flyweight olabilir.",

          "Flyweight Factory, Concrete Flyweight nesnelerinin oluşturulmasından ve paylaşılmasından sorumludur. Bu fabrika, daha önce oluşturulmuş flyweight nesnelerini önbelleğe alır ve aynı nesneyi tekrar kullanarak kaynakları etkin şekilde yönetir. Yeni bir nesne istenirse, öncelikle mevcut nesneler kontrol edilir ve varsa yeniden kullanılır.",

          "Client, flyweight nesneleri kullanarak uygulamanın dışsal durumlarını yönetir ve uygun flyweight nesnesine taleplerini iletir. Client, flyweight nesnelerinin durumlarını yönetirken, nesnelerin paylaşılan içsel durumlarını değiştirerek bellek kullanımını optimize eder. Bu desen, yüksek performans ve düşük hafıza kullanımı sağlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=3h1uQaJff68", // Flyweight Design Pattern - GeeksforGeeks
          "https://www.youtube.com/watch?v=7T0LsMrbGmQ", // Flyweight Pattern Explained - Code with Examples
          "https://www.youtube.com/watch?v=dnIwFx7j9Hg", // Flyweight Design Pattern - Refactoring Guru
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
     
      Kategori(
        kategoriId:Patterns.patterns[2].kategoriId, 
        altKategoriId: 9, 
        altKategoriAdi: "Bridge", 
        altKategoriIcerik: "Büyük sınıfları veya birbiriyle yakın ilişkili sınıfları, birbirinden bağımsız olarak geliştirilebilecek iki ayrı hiyerarşiye bölmeyi sağlayan bir tasarım desenidir.Örneğin,Döviz isimli bir arabirimimiz (interface) ve bu arabirimde implemente edilen USD ve EURO gibi sınıflarımız olsun. Bu durumda, bir Döviz nesnesini içeren bir soyut sınıf (abstract class) oluşturabilir ve bu soyut sınıfın alt sınıfları aracılığıyla Döviz sınıflarına erişim sağlayabiliriz. Bu şekilde, farklı döviz türlerine ilişkin işlemleri ve davranışları soyut sınıfın alt sınıflarında yönetebiliriz.Bridge deseni, köprü olarak adlandırılan bir araç kullanarak, soyutlamayı ve uygulamayı ayırarak, birbiriyle ilişkili ancak farklı geliştirme eksenlerine sahip sınıfları birbirinden bağımsız hale getirir. Bu, daha esnek, modüler ve bakımı kolay bir tasarımı sağlar.", 
        altKategoriResim: "images/bridge.png",
        altKategoriAdiList: [
        "Bridge Pattern Bileşenleri",
        "UML Diyagramı",
        " "
      ],
        altKategoriIcerikList: [
        "Bridge, bir soyutlamayı uygulamasından ayırmamız gerektiğinde kullanılır, böylece ikisi bağımsız olarak değişebilir. Bu tasarım modeli türü, bu model, aralarında bir köprü yapısı sağlayarak uygulama sınıfını ve soyut sınıfı ayırdığı için yapısal desen altına girer.Bu model, somut sınıfların işlevselliğini arayüz uygulayıcı sınıflarından bağımsız kılan bir köprü görevi gören bir arayüz içerir. Her iki sınıf türü de birbirini etkilemeden yapısal olarak değiştirilebilir.Aynı soyut sınıf yöntemi ancak farklı köprü uygulayıcı sınıfları kullanılarak bir dairenin farklı renklerde çizilebileceği aşağıdaki örnek aracılığıyla Köprü deseninin kullanımını gösteriyoruz.",
        "Bir köprü uygulayıcısı olarak hareket eden bir DrawAPI arayüzümüz ve DrawAPI arayüzünü uygulayan RedCircle, GreenCircle somut sınıflarımız var. Shape soyut bir sınıftır ve DrawAPI.BridgePatternDemo nesnesini kullanır, demo sınıfımız farklı renkli daire çizmek için Shape sınıfını kullanır.",
        "images/bridge_pattern_uml_diagram.jpg",
        
      ],
        linkler: [
          "https://www.youtube.com/watch?v=YMo4MyvM8nI", // Bridge Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=BgRIlzAdthk", // Bridge Design Pattern Explained - Code with Examples
          "https://www.youtube.com/watch?v=GICD6MHu7_c", // Bridge Pattern in 5 Minutes
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      
      Kategori(
        kategoriId:Patterns.patterns[2].kategoriId, 
        altKategoriId: 10, 
        altKategoriAdi: "Decorator", 
        altKategoriIcerik: "Decorator tasarım deseninin amacı, nesnelere dinamik olarak özellik eklemektir ve nesne kendisi de eklenen özelliklerden habersiz ve ayrı bir konumda olmalıdır. Yani, kodun belirli kısımlarında nesnelere belirli özellikler kazandırmak isteniyorsa ve bunu nesnenin kendi sınıfından ayrıştırılmış bir şekilde yapmak isteniyorsa, decorator tasarım desenini kullanmak uygun olacaktır.Örneğin, elimizde bir Phone arayüzü (interface) ve buna bağlı bir iPhone sınıfımız olduğunu varsayalım. Ancak daha sonra iPhone modelleri artmaya başladı ve temel bazı özelliklerde bazı değişiklikler yapıldı. Bu durumda, her iPhone modeli için ayrı ayrı sınıflar oluşturup tüm özellikleri tekrar tekrar yazmak yerine, decorator tasarım desenini kullanarak temel iPhone sınıfına ek sınıflar ekleyebiliriz. Bu ek sınıflar, temel iPhone sınıfının özelliklerini genişletebilir veya değiştirebilir, ancak temel sınıf bu değişikliklerden habersizdir. Decorator deseni, bir nesneye dinamik olarak davranış eklemek için idealdir ve özellikle nesnenin değişiklik yapmadan veya alt sınıflarını genişletmeden farklı özellikler eklemesi gerektiğinde kullanışlıdır. Bu sayede kodun daha esnek, modüler ve bakımı daha kolay hale gelir.", 
        altKategoriResim: "images/decorator.png",
        altKategoriAdiList: [
          "Component Interface",
          "Concrete Component",
          "Decorator",
          "Concrete Decorator",
          "Client",
        ],
        altKategoriIcerikList: [
          "Component Interface, hem temel bileşenlerin (Concrete Component) hem de dekoratörlerin ortak arayüzünü tanımlar. Bu sayede istemci, bileşenleri ve dekoratörleri aynı arayüz üzerinden kullanabilir. Böylece bileşenlerin işlevselliği, dekoratörler aracılığıyla dinamik olarak genişletilebilir.",

          "Concrete Component, Component arayüzünü uygulayan temel nesnedir. Bu nesne, gerçek işlevselliği sağlar ve dekoratörler tarafından sarılabilir. Concrete Component, sistemdeki temel davranışı temsil eder ve bu davranış, dekoratörlerle zenginleştirilebilir.",

          "Decorator, Component arayüzünü uygulayan ve bir Component nesnesini saran soyut sınıftır. Decorator, sarmaladığı nesneye gelen çağrıları iletir ve gerektiğinde ek davranışlar ekler. Bu sınıf, alt sınıflar tarafından genişletilerek farklı ek özellikler veya işlemler eklenmesine olanak tanır.",

          "Concrete Decorator, Decorator sınıfını genişleten ve Component nesnesine yeni davranışlar ekleyen sınıftır. Bu sınıf, hem Component arayüzündeki metotları çağırır hem de dekorasyon amaçlı ek işlemleri gerçekleştirir. Böylece nesneler, çalışma zamanında istenilen özelliklerle donatılabilir.",

          "Client, Component arayüzü üzerinden Concrete Component ve Decorator nesneleri ile etkileşime girer. İstemci, bileşenleri ve dekoratörleri aynı şekilde kullanabilir ve bu sayede nesnelerin işlevselliği dinamik olarak genişletilebilir. Bu desen, kodun daha esnek ve yeniden kullanılabilir olmasını sağlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=5bYxklDkX5w", // Decorator Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=Y1ZB1OMpB9s", // Decorator Pattern Explained with Real Life Example
          "https://www.youtube.com/watch?v=q3UN6k0dNYs", // Decorator Pattern in Java - Tutorial
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
      ),
       Kategori(
        kategoriId:Patterns.patterns[2].kategoriId, 
        altKategoriId: 11, 
        altKategoriAdi: "Facade", 
        altKategoriIcerik: "Bir alt sistemin parçalarını oluşturan sınıfları istemciden soyutlayarak kullanımı daha da kolaylaştırmak için tasarlanmış bir tasarım kalıbıdır. Mimari açıdan, karmaşık ve detaylı bir sistemi organize eder ve bir bütün olarak istemcilere sunar.Alt sistem içindeki sınıfların birbirlerinden bağımsız olması ve Facade sınıfından bağımsız bir şekilde çalışabilmesi önemlidir. Facade, içerisindeki sınıfları içermeli ve operasyonları gerçekleştirirken bu sınıfların fonksiyonelliklerini kullanmalıdır. Bu sayede istemci, karmaşık alt sistem detaylarından soyutlanır ve yalnızca Facade arayüzü üzerinden işlemlerini gerçekleştirir. Bu durum, sistemin daha modüler, bakımı daha kolay ve daha kullanıcı dostu olmasını sağlar.", 
        altKategoriResim: "images/facade.png",
         altKategoriAdiList: [
           "Facade Interface",
           "Subsystem Classes",
           "Facade Implementation",
           "Client Interaction",
         ],
         altKategoriIcerikList: [
           "Facade Interface, karmaşık alt sistemlere basit ve tek bir arayüz sağlayan yapıdır. Bu arayüz, istemcinin alt sistemlerin karmaşık yapısını bilmeden onlarla kolayca etkileşime girmesine olanak tanır. Facade, alt sistemlerin işlevselliğini basitleştirir ve kullanımını kolaylaştırır.",

           "Subsystem Classes, Facade tarafından kapsanan ve asıl iş mantığını gerçekleştiren alt sistem bileşenleridir. Bu sınıflar genellikle karmaşık ve çok sayıda metot içerir. Facade, bu alt sistemlerin çağrılarını koordine eder ve istemciye sade bir arayüz sunar.",

           "Facade Implementation, alt sistemlerin karmaşık işlemlerini organize eden ve istemciye basit yöntemler sunan sınıftır. Facade, alt sistem sınıflarının metotlarını çağırarak işlemlerin sırasını ve mantığını yönetir. Bu sayede istemci, sistemin karmaşıklığı ile uğraşmak zorunda kalmaz.",

           "Client Interaction, istemcinin Facade arayüzü üzerinden alt sistemlerle iletişim kurma şeklidir. İstemci, Facade sayesinde karmaşık alt sistemleri doğrudan çağırmak yerine, basitleştirilmiş bir arayüzü kullanır. Bu yaklaşım, sistemin daha anlaşılır, bakımı kolay ve genişletilebilir olmasını sağlar.",
         ],
         linkler: [
           "https://www.youtube.com/watch?v=Tb4UkWZz37E",  // Facade Design Pattern - Refactoring Guru
           "https://www.youtube.com/watch?v=7Tz6vfuSgHw",  // Facade Pattern Explained with Example
           "https://www.youtube.com/watch?v=YggMTT5nhAY",  // Facade Pattern in Java - Tutorial
         ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 12, 
        altKategoriAdi: "Template", 
        altKategoriIcerik: "Template Method , üst sınıfta bir algoritmanın iskeletini oluşturur ve alt sınıfların bu algoritmanın belirli adımlarını değiştirmeden yapısını değiştirmesine olanak tanır. Bu tasarım deseni, bir kalıp (template) olarak hizmet eden bir yöntem içerir ve alt sınıflar bu kalıbı uygulayarak kendi davranışlarını belirlerler.Template Method deseni, kodun tekrar kullanımını sağlar ve alt sınıflar arasında kodun ortak parçalarını paylaşır. Ayrıca, bir algoritmanın genel yapısını tanımlayarak, alt sınıfların sadece özelleştirilmiş davranışlarını belirtmelerine olanak tanır. ", 
        altKategoriResim: "images/template.png",
        altKategoriAdiList: [
          "Abstract Class",
          "Concrete Classes",
          "Template Method",
          "Hook Methods",
          "Client",
        ],
        altKategoriIcerikList: [
          "Abstract Class, algoritmanın iskeletini tanımlar ve adımları soyut veya varsayılan olarak belirler. Bazı adımlar soyut bırakılarak alt sınıfların bunları kendilerine özgü şekilde uygulaması sağlanır. Bu yapı, algoritmanın temel yapısını koruyarak farklı varyasyonların oluşturulmasına imkan verir.",

          "Concrete Classes, Abstract Class'tan türetilen ve algoritmanın soyut adımlarını kendine özgü şekilde uygulayan sınıflardır. Bu sınıflar, soyut sınıfın şablonunu takip ederek belirli işlemleri özelleştirir ve algoritmanın tamamlanmasını sağlar.",

          "Template Method, Abstract Class içinde tanımlanan ve algoritmanın adımlarını belirli bir sırayla çağıran metottur. Bu yöntem, algoritmanın genel yapısını korurken, alt sınıfların belirli adımları değiştirmesine izin verir. Böylece kod tekrarından kaçınılır ve esneklik sağlanır.",

          "Hook Methods, alt sınıfların isteğe bağlı olarak geçersiz kılabileceği varsayılan (boş ya da temel) metodlardır. Bu yöntemler, algoritmanın belirli noktalarında ek davranışların eklenmesine olanak tanır ve şablonun genişletilebilirliğini artırır.",

          "Client, Template Method desenini kullanan ve algoritmanın belirli varyasyonlarını sağlayan Concrete Class nesneleri ile etkileşime giren kod bölümüdür. İstemci, Abstract Class arayüzünü kullanarak algoritmanın genel yapısından haberdar olmadan işlevselliği sağlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=EEAdLo8lFzo",  // Template Method Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=U06bQJqplr8",  // Template Method Pattern Explained
          "https://www.youtube.com/watch?v=6kSN_VK3N0g",  // Template Method Pattern in Java
        ],

       kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 13, 
        altKategoriAdi: "Mediator", 
        altKategoriIcerik: " Nesneler arasındaki karmaşık ve kaotik bağımlılıkları azaltmayı sağlayan davranışsal bir tasarım desenidir. Bu desen, nesneler arasındaki doğrudan iletişimi sınırlar ve sadece bir mediator nesnesi üzerinden haberleşmelerini zorlar. Mediator tasarım deseni, birbiriyle bağımsız hale getirilmek istenen bileşenler arasındaki doğrudan iletişimi kesmenin gerekliliğini önerir. Bu bileşenler, doğrudan birbirleriyle iletişim kurmak yerine, özel bir mediator nesnesi aracılığıyla dolaylı olarak iş birliği yaparlar. Mediator nesnesi, bileşenler arasındaki iletişimi yönetir ve uygun mesajları ileterek işbirliğini sağlar. Bu sayede, bileşenler düzinelerce başka bileşene bağımlı olmak yerine, sadece tek bir mediator nesnesine bağımlı olurlar. Mediator deseni, karmaşık sistemlerdeki etkileşimi düzenlemek ve yönetmek için idealdir. Özellikle, çok sayıda nesne arasında karmaşık ilişkilerin bulunduğu durumlarda kullanılır. ", 
        altKategoriResim: "images/mediator.png",
        altKategoriAdiList: [
          "Mediator Interface",
          "Concrete Mediator",
          "Colleague Classes",
          "Communication Control",
          "Client",
        ],
        altKategoriIcerikList: [
          "Mediator Interface, farklı nesneler (colleague'ler) arasındaki iletişimi yöneten ortak arayüzdür. Bu arayüz, nesnelerin birbirleriyle doğrudan değil, aracılar (mediator) üzerinden iletişim kurmasını sağlar. Bu sayede nesneler arasındaki bağımlılıklar azaltılır.",

          "Concrete Mediator, Mediator arayüzünü uygulayan ve colleague nesneleri arasındaki iletişimi somut olarak yöneten sınıftır. Concrete Mediator, nesneler arasındaki mesajları alır, işler ve hedef nesnelere iletir. Böylece sistemin karmaşık etkileşimleri merkezi bir noktadan kontrol edilir.",

          "Colleague Classes, mediator ile iletişim kuran ve aralarındaki iletişimi mediator üzerinden gerçekleştiren nesnelerdir. Bu sınıflar, doğrudan birbirleriyle iletişim kurmaz; tüm mesajlaşma mediator tarafından organize edilir. Bu sayede colleague nesneler birbirlerinden bağımsız kalır.",

          "Communication Control, mediator pattern'in temel amacı olan iletişim yönetimidir. Nesneler arasındaki karmaşık bağlantılar mediator tarafından basitleştirilir ve yönetilir. Bu desen, sistemin daha esnek, anlaşılır ve bakımı kolay olmasını sağlar.",

          "Client, mediator ve colleague nesnelerini oluşturup aralarındaki ilişkiyi başlatan ve yöneten koddur. İstemci, mediator arayüzü üzerinden nesneler arasındaki iletişimi kontrol eder ve sistemi yapılandırır.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=Rc9e1qX5AfE",  // Mediator Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=VQDuNfzyqro",  // Mediator Pattern Explained
          "https://www.youtube.com/watch?v=Ov9g1tkfjcQ",  // Mediator Pattern in Java
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 14, 
        altKategoriAdi: "Chain Of Responsibility", 
        altKategoriIcerik: "Bir isteği işleyen nesnelerin zincirini oluşturarak, isteği işleyebilecek olan nesneyi bulana kadar her nesneye sırayla geçer. Bu desen, istekleri işleyecek olan nesnenin dinamik olarak belirlenmesine olanak sağlar.Bu desenin güzel yanı, işleyicilerin isteği zincirin bir sonraki adımına göndermek yerine isteği durdurmayı tercih edebilmesidir. Böylece, isteğin ilk aşamada durması gerekiyorsa, sonraki adımlara hiç iletmez. Örneğin, kullanıcı girişi hatalıysa, istek parametrelerini filtrelemeniz, sonuçları ön bellekte aramanız veya veri tabanından sorgulamamanız gerekmez.Bir banka örneğiyle açıklamak gerekirse, müşterilerden gelen tüm para çekme talepleri vezneye ulaşır. Eğer vezne talep edilen miktarı verme yetkisine sahipse, müşterinin ödemesi gerçekleştirilir; aksi takdirde istek müdüre iletilir. Müdür, kendi yetki durumuna göre parayı öder veya isteği genel müdüre iletir. Bu şekilde, her bir adım talebi işler ve gerekli kararları alır; istek zincirin sonuna ulaşana kadar süreç devam eder.", 
        altKategoriResim: "images/chainofresponsibility.png",
        altKategoriAdiList: [
          "Handler Interface",
          "Concrete Handlers",
          "Chain Setup",
          "Request Processing",
          "Client",
        ],
        altKategoriIcerikList: [
          "Handler Interface, gelen istekleri işlemek için ortak bir arayüz sağlar. Bu arayüz, isteği işleyip işleyemeyeceğini belirten ve isteği zincirdeki bir sonraki işleyiciye iletebilen metotları tanımlar. Bu sayede esnek ve genişletilebilir bir yapı kurulur.",

          "Concrete Handlers, Handler arayüzünü uygulayan ve belirli türdeki istekleri işleyen sınıflardır. Her işleyici, isteği işleyebilir ya da işleyemiyorsa zincirdeki bir sonraki işleyiciye aktarır. Bu yapı, sorumlulukların birden fazla nesne arasında paylaşılmasını sağlar.",

          "Chain Setup, işleyicilerin birbirine bağlandığı ve isteğin sıralı olarak işlendiği yapının kurulmasıdır. Zincirdeki her işleyici, bir sonraki işleyiciyi referans alır ve isteği uygun işleyici bulana kadar iletir. Bu sayede dinamik olarak zincir oluşturulabilir.",

          "Request Processing, isteğin zincir boyunca işleyicilere iletilmesi sürecidir. Her işleyici, isteği inceleyip kendi sorumluluk alanında ise işler; değilse zincirde ilerletir. Bu mekanizma, kodun esnek ve yeniden kullanılabilir olmasını sağlar.",

          "Client, zinciri oluşturup isteği başlatan kod parçasıdır. İstemci, Handler arayüzünü kullanarak isteği gönderir ve zincirin sorumluluk dağılımını kolayca yönetir. Bu desen, karmaşık şartlı ifadelerden kaçınmayı ve kodun sadeleşmesini sağlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=uqMVYt0QSkE",  // Chain of Responsibility Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=fjj9zUtwTrE",  // Chain of Responsibility Design Pattern Explained
          "https://www.youtube.com/watch?v=6xhZn7H8A4g",  // Chain of Responsibility Pattern in Java
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 15,  
        altKategoriAdi: "Observer", 
        altKategoriIcerik: "Adından da anlaşılacağı gibi, gözlemci, izleyici veya gözetmen gibi bir rolü ifade eden ve işlevini bu doğrultuda yerine getiren bir tasarım desenidir. Bu desen, elimizdeki mevcut bir nesnenin durumunda herhangi bir değişiklik olduğunda, bu değişikliklerden diğer nesneleri haberdar eden bir yapıyı ifade eder.Bu desenin temelinde, bir nesnenin durumu değiştiğinde ona bağımlı olan diğer nesnelerin bu değişiklikten etkilenmesi ve uygun şekilde tepki vermesi yatar. Observer deseni, birçok modern programlama dilinde ve çeşitli yazılım alanlarında kullanılan temel bir yapıdır. Özellikle GUI programlamada ve olay-tabanlı sistemlerde sıklıkla karşılaşılır.", 
        altKategoriResim: "images/observer.png",
        altKategoriAdiList: [
          "Subject Interface",
          "Observer Interface",
          "Concrete Subject",
          "Concrete Observer",
          "Notification Mechanism",
          "Client",
        ],
        altKategoriIcerikList: [
          "Subject Interface, gözlemlenen nesnenin (subject) durumunu izleyen ve gözlemcileri (observers) yönetmek için temel metotları tanımlar. Bu metotlar arasında gözlemci ekleme, çıkarma ve bildirim yer alır. Böylece subject, bağımlı nesnelerle bağlantıyı sağlar.",

          "Observer Interface, subject tarafından durum değişiklikleri bildirildiğinde tepki veren nesnelerin uygulaması gereken metotları tanımlar. Gözlemciler, subject’in durumu değiştiğinde bu metot aracılığıyla güncellenir ve uygun işlemi yapar.",

          "Concrete Subject, Subject Interface'i uygulayan ve durumu tutan nesnedir. Durum değişikliklerinde tüm kayıtlı gözlemcilere bildirim gönderir. Böylece bağlı gözlemciler, subject’in güncel durumuna erişebilir ve gerekli aksiyonları alabilir.",

          "Concrete Observer, Observer Interface'i uygulayan ve subject'in durum değişikliklerine yanıt veren nesnelerdir. Gözlemciler, subject'ten aldıkları bildirimler doğrultusunda kendi iç durumlarını günceller veya başka işlemler yapar.",

          "Notification Mechanism, subject’in durumundaki değişikliklerin gözlemcilere iletilmesini sağlayan süreçtir. Bu mekanizma, observer deseninin temelini oluşturur ve nesneler arasındaki bağımlılıkların etkin ve güncel tutulmasını sağlar.",

          "Client, subject ve observer nesnelerini oluşturup birbirine bağlayan ve gözlem sürecini başlatan koddur. İstemci, subject'in durumunu değiştirdiğinde observer'ların otomatik olarak güncellenmesini sağlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=_BpmfnqjgzQ",  // Observer Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=wiQdrH2YpT4",  // Observer Pattern Explained with Example
          "https://www.youtube.com/watch?v=QS0i9AmQd8I",  // Observer Pattern in Java
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
      ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 16, 
        altKategoriAdi: "Strategy", 
        altKategoriIcerik: "Strategy deseni, spesifik bir işi birçok farklı şekilde yapan bir sınıfı alarak bütün bu algoritmaları ayrı ayrı strategy  adı verilen ayrı sınıflara ayırmanızı önerir. Bu sayede, bu algoritmaları değiştirmeniz veya yeni algoritmalar eklemeniz gerektiğinde, bağlam sınıfınızı değiştirmeden kolaylıkla uygulama esnekliği sağlanır.Bu modelde,bağlam olarak adlandırılan orijinal sınıfta, oluşturduğumuz bu stratejilere referansları içeren alanlar oluşturulması gerekir. Bağlam sınıfı, algoritma seçimini veya davranışını yürütürken bu stratejileri kullanır.Örneğin, üç farklı şifreleme algoritması varsa, bunları şifreleme adını verdiğimiz bir arayüze implemente edilen üç farklı sınıf olarak oluşturabiliriz. Sonra, ihtiyaç duyduğumuz yerde bu sınıfları bağlam sınıfımızda kullanabiliriz. Bağlam sınıfı, çalışma zamanında hangi stratejiyi kullanacağını dinamik olarak belirleyebilir veya başlangıçta bir strateji belirleyebilir.", 
        altKategoriResim: "images/strategy.png",
        altKategoriAdiList: [
          "Strategy Interface",
          "Concrete Strategies",
          "Context",
          "Strategy Switching",
          "Client",
        ],
        altKategoriIcerikList: [
          "Strategy Interface, farklı algoritmaların ortak bir arayüzü üzerinden tanımlanmasını sağlar. Bu arayüz, aynı problemi farklı şekillerde çözebilen algoritmaların birbirinin yerine kullanılabilmesine olanak tanır.",

          "Concrete Strategies, Strategy arayüzünü uygulayan ve farklı algoritmaları somut olarak gerçekleştiren sınıflardır. Her biri problemi çözmek için farklı bir yöntem sağlar ve kolayca değiştirilebilir veya genişletilebilir.",

          "Context, Strategy nesnesini kullanan ve algoritmayı çalıştıran sınıftır. Context, hangi stratejinin kullanılacağını belirler ve algoritmayı çalıştırmak için Strategy arayüzünü çağırır. Böylece algoritma seçimi dinamik olarak yapılabilir.",

          "Strategy Switching, çalışma zamanında kullanılacak stratejinin değiştirilmesi işlemidir. Context nesnesi, farklı Strategy nesneleri arasında geçiş yapabilir ve böylece davranışını değiştirir. Bu, kodun esnekliğini ve yeniden kullanılabilirliğini artırır.",

          "Client, Context ve Strategy nesnelerini oluşturan ve bunları yapılandıran koddur. İstemci, ihtiyaçlarına göre uygun stratejiyi seçer ve Context aracılığıyla algoritmanın uygulanmasını sağlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=ku8Y2Tq-Bto",  // Strategy Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=v9ejT8FO-7I",  // Strategy Pattern Explained with Real World Example
          "https://www.youtube.com/watch?v=F2jc0_rC6Gw",  // Strategy Pattern in Java
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 17, 
        altKategoriAdi: "Command", 
        altKategoriIcerik: "Bir isteği bir nesne olarak temsil etmek ve bu isteği çağıran nesne ve isteği gerçekleştiren nesne arasındaki bağı gevşekleştirmek için kullanılan bir tasarım desenidir.Bu desenin ana fikri, bir isteği sarmalayan ve bir komut nesnesi olarak adlandırılan bir arayüze sahip olmaktır. Komut nesnesi, isteği çağıran nesneyle ilişkilendirilir ve isteği gerçekleştirmek için gereken tüm bilgileri içerir. Bu şekilde, isteği çağıran nesne, komut nesnesine bağımlıdır ancak gerçekleştirilen işlemlerden habersizdir.Özellikle geri alma (undo) işlemleri, iş akışları ve kullanıcı arabirimleri gibi senaryolarda sıklıkla kullanılır.", 
        altKategoriResim: "images/command.png",
        altKategoriAdiList: [
          "Command Interface",
          "Concrete Command",
          "Invoker",
          "Receiver",
          "Client",
        ],
        altKategoriIcerikList: [
          "Command Interface, işlemleri temsil eden ortak bir arayüz sağlar. Bu arayüz, komutların yürütülmesi için bir metot tanımlar ve böylece farklı komutların aynı şekilde çağrılabilmesine olanak tanır.",

          "Concrete Command, Command arayüzünü uygulayan ve belirli bir işlemi gerçekleştiren somut komut sınıfıdır. Bu sınıf, işlemi gerçekleştirmek için gerekli alıcı (receiver) nesnesine sahip olur ve çağrıldığında alıcı üzerinde ilgili işlemi tetikler.",

          "Invoker, komutları çağıran ve çalıştıran sınıftır. Komutları saklar ve gerektiğinde yürütür. Invoker, komutların ne yaptığını bilmez, sadece komut arayüzüne bağlı kalarak komutları tetikler.",

          "Receiver, gerçek işlemin yapıldığı sınıftır. Concrete Command nesnesi, alıcıyı kullanarak işlemi gerçekleştirir. Receiver, uygulamanın iş mantığını içerir ve komut tarafından çağrılır.",

          "Client, Concrete Command, Receiver ve Invoker nesnelerini oluşturur ve birbirleriyle ilişkilendirir. İstemci, hangi komutun çalıştırılacağını belirler ve Invoker’a komutu verir.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=OR4t5JfPXqk",  // Command Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=5ASMoIdJMZs",  // Command Pattern Explained
          "https://www.youtube.com/watch?v=EV9LFbSztFU",  // Command Design Pattern Tutorial
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 18, 
        altKategoriAdi: "State", 
        altKategoriIcerik: "Bir nesnenin iç durumu değiştiğinde davranışını değiştirmesine izin veren davranışsal bir tasarım modelidir. Bu desen, nesnenin durumunu bir dizi özel durum nesnesi aracılığıyla temsil eder ve duruma bağlı olarak farklı davranışları gerçekleştirir.State deseni, Finite State Machine (Sonlu Durum Makinesi) kavramı ile yakından ilişkilidir. Herhangi bir uygulamada, bir nesnenin farklı durumlar arasında geçiş yapabileceği ve her durumun farklı davranışları tetikleyebileceği senaryolarda State Pattern kullanılabilir.State Pattern'in kullanımı, karmaşık if-else ifadeleri yerine nesneler arasındaki ilişkileri temsil eden daha modüler bir yapı sağlar. Her bir durum için ayrı bir somut sınıf oluşturulur ve bu durumlar, durum değişikliklerine göre nesnenin davranışını değiştirebilir.Örneğin, uzaktan kumandadaki düğmelere basarak bir televizyonun durumunu değiştirebilirsiniz. Televizyonun mevcut durumuna bağlı olarak, AÇIK durumdaysa kapatılabilir, sessize alınabilir veya özellikleri değiştirilebilir. Ancak TV KAPALI durumdaysa, düğmelere basıldığında bir işlem gerçekleşmeyecektir. KAPALI durumu için yalnızca bir sonraki olası durumun AÇIK konumuna gelmesi beklenir.Bu desen ayrıca fast food otomatları veya para ile alışveriş yapılan diğer makineler gibi sistemlerde de sıklıkla kullanılır. Herhangi bir makinenin farklı durumları ve bu durumlara bağlı olarak farklı işlemler gerçekleştirme ihtiyacı olduğunda, State Pattern kullanılabilir.", 
        altKategoriResim: "images/state.png",
        altKategoriAdiList: [
          "State Interface",
          "Concrete States",
          "Context",
          "State Transitions",
          "Client",
        ],
        altKategoriIcerikList: [
          "State Interface, nesnenin farklı durumlarını tanımlayan ve bu durumlar arasında davranış değişikliğine olanak sağlayan ortak bir arayüzdür. Bu arayüz, duruma bağlı olarak farklı metotlar içerir ve durumu temsil eden sınıflar tarafından uygulanır.",

          "Concrete States, State arayüzünü uygulayan ve nesnenin farklı durumlarını somut olarak temsil eden sınıflardır. Her durum, Context nesnesinin davranışını etkileyen farklı bir davranış seti sağlar.",

          "Context, mevcut durumu tutan ve duruma bağlı olarak davranışlarını değiştiren sınıftır. Context, durum nesnesi aracılığıyla istekleri yönlendirir ve durumu değiştirmek için gerekli geçişleri yönetir.",

          "State Transitions, nesnenin bir durumdan diğerine geçiş sürecidir. Bu geçişler, Context veya State nesneleri tarafından yönetilir ve nesnenin davranışının dinamik olarak değişmesini sağlar.",

          "Client, Context ve State nesnelerini oluşturup ilişkilendiren koddur. İstemci, Context nesnesine istek gönderir ve nesnenin mevcut durumuna göre uygun davranışın gerçekleştirilmesini sağlar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=3jvS34im1xY",  // State Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=3DvGg8kIhPE",  // State Design Pattern Explained
          "https://www.youtube.com/watch?v=_mA4ynQpDEw",  // State Pattern Tutorial
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 19, 
        altKategoriAdi: "Visitor", 
        altKategoriIcerik: "Popüler bir tasarım kalıbı değildir ancak yazdığımız sınıflara sonradan modüler olarak metodlar eklememizi sağlar. Sınıfın olmayan özelliğini sonradan eklemeyi kolaylaştırır,işlemi ziyaretçi nesneleri yapar. Eğer sisteme yeni nesneler eklenmiyor, fakat sık sık yeni işlemlerin eklenmesi gerekiyorsa bu tasarım deseni kullanılabilir. Bu tasarım deseninin kullanılmasıyla, yapılacak işlemle ilgili kodların merkezi bir nesnede toplanır.", 
        altKategoriResim: "images/visitor.png",
        altKategoriAdiList: [
        "Visitor Pattern Bölümleri",
        "UML Diyagramı",
        "Tasarım Bileşenleri",
      ],
        altKategoriIcerikList: [
        "Visitor Pattern iki bölümden oluşur:\n1-Ziyaretçi tarafından uygulanan ve veri yapısındaki her öğe için çağrılan Visit() adı verilen bir yöntem ve Bir ziyaretçiyi kabul eden Accept() yöntemlerini sağlayan ziyaret edilebilir sınıflar.\n",
        "images/Visitor-Design-Pattern-Diagram.png",
        "Client:\nClient sınıfı, ziyaretçi tasarım modelinin sınıflarının bir tüketicisidir. Veri yapısı nesnelerine erişimi vardır ve onlara, uygun işlemi gerçekleştirmesi için bir Ziyaretçiyi kabul etmeleri talimatını verebilir.\nZiyaretçi(Visitor):\nBu, ziyaret edilebilir tüm sınıf türleri için ziyaret işlemlerini bildirmek için kullanılan bir arayüz veya soyut bir sınıftır.\nConcreteVisitor:\nHer ziyaretçi türü için soyut ziyaretçide belirtilen tüm ziyaret yöntemlerinin uygulanması gerekir. Her Ziyaretçi farklı operasyonlardan sorumlu olacaktır.\nVisitable:\nKabul etme işlemini bildiren bir arayüzdür. Bu, bir nesnenin ziyaretçi nesnesi tarafından “ziyaret edilmesini” sağlayan giriş noktasıdır.\nConcreteVisitable:\nBu sınıflar Visitable arayüzünü veya sınıfını uygular ve kabul etme işlemini tanımlar. Ziyaretçi nesnesi, kabul işlemi kullanılarak bu nesneye iletilir.\n",
      ],
        linkler: [
          "https://www.youtube.com/watch?v=5z1-BW9VGAk",  // Visitor Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=yi_N8t54nB4",  // Visitor Pattern Explained with Examples
          "https://www.youtube.com/watch?v=InExT3X2LRk",  // Visitor Pattern Tutorial
        ],

        kodlar: {"images/java.png":"dosyalar/visitor_java","images/python.png":"dosyalar/visitor_python","images/cpp.png":"dosyalar/visitor_c++"},
        ),
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 20, 
        altKategoriAdi: "Iterator", 
        altKategoriIcerik: "Bir koleksiyonun elemanlarına erişmek ve bu elemanlar üzerinde dolaşmak için bir arayüz sağlayan bir tasarım desenidir. Bu desen, koleksiyonların iç yapısını gizler ve koleksiyondaki elemanlara erişimi standartlaştırır, böylece koleksiyonun yapısını değiştirmezseniz döngü işlemlerini değiştirmek gerekmez.Iterator Pattern'in temelinde, koleksiyonun elemanlarına erişmek için bir yineleyici(iterator) arayüzü bulunur. Bu arayüz, koleksiyonun her elemanına sırayla erişim sağlar ve bu elemanlar üzerinde işlem yapma olanağı sağlar. Yineleyici, koleksiyonun iç yapısını gizler ve döngü işlemlerini kolaylaştırır. Iterator Pattern'i kullanan bir uygulama, koleksiyonun iç yapısını bilmeden elemanlarına erişebilir ve bu elemanlar üzerinde döngüler veya işlemler gerçekleştirebilir. Bu desen, yazılımın modülerliğini ve esnekliğini artırır ve kodun daha okunabilir olmasını sağlar. Bu desen genellikle programlama dillerindeki standart kütüphanelerde, özellikle de koleksiyon veri yapılarında kullanılır. Iterator Pattern, bir dizi veya listedeki elemanlar üzerinde dolaşmak gibi yaygın işlemleri daha basit hale getirir ve tekrar kullanılabilirlik sağlar.", 
        altKategoriResim: "images/iterator.png",
        altKategoriAdiList: [
          "Iterator Interface",
          "Concrete Iterator",
          "Aggregate Interface",
          "Concrete Aggregate",
          "Traversal Mechanism",
          "Client",
        ],
        altKategoriIcerikList: [
          "Iterator Interface, koleksiyon üzerinde dolaşmak için gerekli temel metotları tanımlar. Bu metotlar genellikle sonraki elemana geçiş, mevcut elemana erişim ve dolaşmanın sonuna gelme kontrolünü içerir.",

          "Concrete Iterator, Iterator arayüzünü uygulayan ve belirli bir koleksiyon türü üzerinde dolaşmayı sağlayan sınıftır. Bu sınıf, koleksiyonun yapısına bağlı olarak gezinme algoritmasını gerçekleştirir.",

          "Aggregate Interface, koleksiyonu temsil eden ve iterator oluşturma metodunu tanımlayan arayüzdür. Bu arayüz sayesinde farklı koleksiyon türleri üzerinde iteratorlar oluşturulabilir.",

          "Concrete Aggregate, Aggregate arayüzünü uygulayan ve spesifik bir koleksiyon türünü temsil eden sınıftır. Bu sınıf, iterator oluşturmak için gerekli metodu sağlar ve koleksiyonun elemanlarını tutar.",

          "Traversal Mechanism, iterator aracılığıyla koleksiyon elemanlarının sırasıyla ziyaret edilmesini sağlayan süreçtir. Bu mekanizma, koleksiyonun iç yapısını gizler ve standart bir gezinme imkanı sunar.",

          "Client, Concrete Aggregate ve Iterator nesnelerini oluşturup kullanarak koleksiyon üzerinde dolaşmayı sağlayan koddur. İstemci, iterator aracılığıyla koleksiyon elemanlarına erişir ve işlem yapar.",
        ],
        linkler: [
          "https://www.youtube.com/watch?v=5zDkFGh-0Zw",  // Iterator Design Pattern Tutorial - Refactoring Guru
          "https://www.youtube.com/watch?v=OfteowhwKz4",  // Iterator Pattern Explained with Examples
          "https://www.youtube.com/watch?v=csoQxz78G_4",  // Iterator Pattern Java Example
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
      ),
      
      Kategori(
        kategoriId:Patterns.patterns[3].kategoriId, 
        altKategoriId: 21,  
        altKategoriAdi: "Memento", 
        altKategoriIcerik: "Memento deseni, bir nesnenin iç durumunu kaydetmek ve gerektiğinde önceki bir duruma geri yüklemek için kullanılan bir tasarım desenidir.Bu desenin ana amacı, bir nesnenin iç durumunu bir memento adı verilen bir nesne aracılığıyla kaydetmektir. Memento, bu durumu kapsüller ve gerektiğinde geri yüklemek için gerekli olan bilgileri içerir. Bu sayede, nesnenin geçmiş durumlarına geri dönmek veya bir geri alma (undo) işlemi gerçekleştirmek mümkün olur. Memento deseni, özellikle bir nesnenin geçmiş durumlarını izlemek, geri alma işlemleri gerçekleştirmek veya durum geçmişini saklamak gerektiğinde kullanılır.", 
        altKategoriResim: "images/memento.png",
        altKategoriAdiList: [
        "Singleton Alt Kategori 1",
        "Singleton Alt Kategori 2",
        "Singleton Alt Kategori 3",
      ],
        altKategoriIcerikList: [
        "Singleton Alt Kategori 1 İçerik",
        "Singleton Alt Kategori 2 İçerik",
        "Singleton Alt Kategori 3 İçerik",
      ],
        linkler: [
          "https://www.youtube.com/watch?v=8LusJS5-AGo",  // Memento Design Pattern - Refactoring Guru
          "https://www.youtube.com/watch?v=uc2BFo3Dp4E",  // Memento Pattern Explained with Examples
          "https://www.youtube.com/watch?v=3ZEm-Nd9OCg",  // Memento Pattern Java Example
        ],

        kodlar: {"images/java.png":"images/codes/factory_java.png","images/python.png":"images/codes/factory_python.png","images/cpp.png":"images/codes/factory_c++.png"},
        ),


  ];

}