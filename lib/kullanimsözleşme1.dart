import 'package:flutter/material.dart';
import 'package:yazevim/home2.dart';

class sozlesme extends StatelessWidget {
  const sozlesme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text(
                "Aşağıdaki kullanım koşullarını okuyunuz ve kabul etmeniz halinde uygulamayı kullanmaya başlayabilirsiniz: \n \n Uygulama, sadece 18 yaş ve üzeri kişiler tarafından kullanılabilir. \n\n Uygulamada yer alan ilanların doğruluğundan, kalitesinden ve güvenilirliğinden sorumlu değiliz. \n\n Sadece bir aracı olarak ilanların yayınlanmasına olanak sağlıyoruz. \n\n İlanlarda yer alan bilgileri doğru ve tam olarak kontrol etmek sizin sorumluluğunuzdadır. \n \nHerhangi bir yanlışlıktan dolayı yaşanabilecek sorunlardan bizim sorumluluğumuz bulunmamaktadır. \n \nUygulamayı kullanırken yasalara uymak zorundasınız. Yasal düzenlemelere uymamak kişisel sorumluluğunuzdadır ve uygulamamızın yasaya aykırı kullanımından dolayı doğabilecek her türlü sorunun sorumluluğunu kabul etmemekteyiz.\n \nUygulama, ilanların güvenli ve sağlıklı koşullarda gerçekleşmesine dair bir garantiden sorumlu değildir. İlan sahiplerinin, ilan içeriği veya buluşma yerinde ortaya çıkabilecek tüm risklerden sorumlu olduğunu unutmayın.Uygulama, ilan verenlerin veya kullanıcıların davranışlarından sorumlu değildir. \n\n Tüm bu sorumluluklar anonim olarak yerine getirilir ve bu nedenle herhangi bir olası sorunla başa çıkmak veya herhangi bir kullanıcıyı takip etmek mümkün olmayabilir. \n \nUygulama, herhangi bir zamanda kullanım koşullarını değiştirme hakkını saklı tutar. \n\n Bu nedenle, uygulamayı kullanmaya devam ettiğinizde, kullanım koşullarımızın değişebileceğini kabul ettiğinizi anladığımızı kabul etmiş olursunuz. \n \nUygulamamızın kullanımıyla ilgili herhangi bir sorunuz veya endişeniz varsa, lütfen bizimle iletişime geçmekten çekinmeyin. \n Teşekkürler. \n \n \n İletişim : 05449637084"),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => homee2()));
              },
              child: const Text('Sorumlulukları Kabul Ediyorum'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Kullanım Sözleşmesi"),
        backgroundColor: Colors.green,
      ),
    );
  }
}
