<?php
$sayfa ="Hakkımızda";
include("inc/head.php");
include("inc/vt.php");

?>

        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase mt-3">Hakkımızda</h2>
                    <h3 class="section-subheading text-muted">- İçerik sizden Kod bizden</h3>
                </div>
                <ul class="timeline">
                    <?php
                    $sorgu=$baglanti->prepare("select * from hakkimizda ");
                    $sorgu->execute();
                    while($sonuc=$sorgu->fetch())
                    {
                    ?>
    
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/<?php echo $sonuc["foto"] ?>" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4><?php echo $sonuc["tarih"] ?></h4>
                                <h4 class="subheading"><?php echo $sonuc["baslik"] ?></h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted"><?php echo $sonuc["metin"] ?></p></div>
                        </div>
                    </li>
                    <?php
                    }
                    ?>
                  
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>
                               
                          Hikayemizin
                         <br>
                          Bir Parçası
                          <br>
                          Olun
                            </h4>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!-- Team-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Bizim İnanılmaz Takımımız</h2>
                </div>
                <div class="row">
                <?php
                    $sorgu2=$baglanti->prepare("select * from hakkimizdateam ");
                    $sorgu2->execute();
                    while($sonuc2=$sorgu2->fetch())
                    {
                    ?>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/<?php echo $sonuc2["foto"] ?>" alt="" />
                            <h4><?php echo $sonuc2["teamIsim"] ?></h4>
                            <p class="text-muted"><?php echo $sonuc2["teamBolum"] ?></p>
                            <a class="btn btn-dark btn-social mx-2" href="https://instagram.com/<?php echo $sonuc2["teamLinkInstagram"] ?>"><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://github.com/<?php echo $sonuc2["teamLinkGithub"] ?>"><i class="fab fa-github"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://facebook.com/<?php echo $sonuc2["teamLinkFacebook"] ?>"><i class="fab fa-facebook"></i></a>
                        </div>
                    </div>
                    <?php
                    }
                    ?>
                </div>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">Sorularınız varsa bizimle sosyal medya hesaplarımız aracılığıyla iletişime geçebilirsiniz</p></div>
                </div>
            </div>
        </section>


        
<?php
include("inc/footer.php");
?>     