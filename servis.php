<?php
$sayfa ="Hizmetlerimiz";
include("inc/head.php");
include("inc/vt.php");
?>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase mt-3">Hizmetlerimiz</h2>
                    <h3 class="section-subheading text-muted">Web Sitesi, Android ve IOS Uygulama, Paket Programlar, Robotik Çözümler..vb.</h3>
                </div>
                <div class="row text-center">
                <?php
                    $sorgu2=$baglanti->prepare("select * from servis where aktif=1 order by sira");
                    $sorgu2->execute();
                    while($sonuc2=$sorgu2->fetch())
                    {
                    ?>
                     <div class="col-md-3 col-sm-6 my-3">
                    <div class="card" style="width: 18rem;">
                    <img src="assets/img/servis/<?php echo $sonuc2['foto'] ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title"><?php echo $sonuc2['baslik'] ?></h5>
                    <p class="card-text"><?php echo $sonuc2['metin'] ?></p>                     
                    </div>
                    </div>
                    </div>
                    <?php
                    }
                    ?> 
                </div>
            </div>
        </section>

        <?php
include("inc/footer.php");
?>     