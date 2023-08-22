# 42_Minitalk

## Projenin Amacı
`Minitalk` projesi, C programlama dilinde geliştirilmiş bir iletişim uygulamasıdır. Projenin temel amacı, süreçler arası iletişimde sinyal işlemleri kullanarak istemci ve sunucu arasında güvenilir veri iletimini gerçekleştirmektir. Özellikle, veri bütünlüğünün korunması ve veri iletiminin hızlı ve hatasız bir şekilde sağlanması hedeflenir.

## Nasıl Kullanılır

1. Projeyi klonlayın:
   ```Console
   git clone https://github.com/BoraOmerBoluk/42_Minitalk
   ```
   
2. ***Minitalk*** işlevini kullanmak istediğiniz C programınıza ekleyin:
   ```C
   #include "Minitalk.h"
   ```
   
3. ***Client*** ve ***Server*** uygulamasını sırayla derleyin:
   ```Console
   bboluk@bboluk42 Minitalk % make
   ```
   ```sh  
   gcc -Wall -Wextra -Werror server.c -o server
   gcc -Wall -Wextra -Werror client.c -o client
   ```
   > _**Not:** Bonus dosyaları için ayrıca 'make bonus' komutunu çalıştırmanız gerekmektedir._

4. ***Server*** uygulamasını başlatın:
    ```Console
    bboluk@bboluk42 Minitalk % ./server
    ```
    ```sh
    PID: SUNUCU_PID
    ```
5. ***Client*** uygulamasını kullanarak veri gönderin:
    ```Console
    bboluk@bboluk42 Minitalk % ./client SUNUCU_PID* "Merhaba, Minitalk!👋🏻"
    ```
   > _**Not:**  
   > *: SUNUCU_PID kısmına `./server`'ı çalıştırdığımızda bize verdiği "PID" numarasını yazmalıyız._

## Projenin Özellikleri
***1. Düşük Seviyeli İletişim:*** Minitalk, süreçler arası iletişimde sinyal işlemleri kullanarak istemci ve sunucu arasında iletişim kurar. Bu, doğrudan veri iletimi ve alımını sağlar.  
***2. Veri İletim Protokolü:*** İletilen veri, özel bir protokol üzerinden parçalara bölünür ve sunucuya gönderilir. Bu sayede verinin güvenliği ve bütünlüğü sağlanır.  
***3. Hata Kontrolü:*** Sunucu, veriyi alırken hata kontrolü yapar. Bu sayede iletilen verinin bozulup bozulmadığı kontrol edilir ve veri bütünlüğü korunur.  

## 6. İşlevin Çalışma Mantığı  
1. `Server` uygulaması başlatıldığında, `server` kendi PID'sini görüntüler ve `client` ile iletişim için hazır hale gelir.
2. `Client`, `Server` PID'sini kullanarak iletişim kurar.
3. `Client`, iletilmek istenen veriyi özel bir protokol üzerinden parçalara böler ve `server`'a gönderir.
4. `Server`, iletilen veriyi alır, parçaları birleştirir ve veri bütünlüğünü kontrol eder.
5. Veri bütünlüğü sağlandıysa, `server` başarılı bir geri dönüş değeri gönderir.
6. `Client`, geri dönüş değerini alarak verinin başarıyla iletilip iletilmediğini doğrular.

## Katkıda Bulunma
Eğer bu projeye katkıda bulunmak isterseniz, fork ve pull request oluşturursanız sevinirim. Repository güncellenmeden önce gerekli testleri yaptığınızdan emin olunuz 😃.
 
## Kaynaklar  
Bu proje, _42 School_ tarafından verilen görevlerden biridir. Proje ile ilgili daha fazla bilgi ve detaylı açıklamalar için klasör içindeki tr.subject.pdf dosyasını inceleyebilirsiniz.
