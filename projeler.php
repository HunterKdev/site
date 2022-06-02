<?php
$sayfa ="Projeler";
include("inc/head.php");
include("inc/vt.php");
?>

        <!--haberler Grid-->
        <section class="page-section bg-light " id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase mt-3">Projeler</h4>
                </div>
                <div class="row">
                <?php
                    $sorgu2=$baglanti->prepare("select * from haber");
                    $sorgu2->execute();
                    while($sonuc2=$sorgu2->fetch())
                    {
                    ?>

                    <div class="col-lg-3 col-sm-6 mb-4">
                    <div class="card" style="width: 15rem;height:35rem">
                    <a style="color: black;"  href="projeDetay.php?id=<?= $sonuc2["id"] ?>" ><img src="assets/img/proje/<?php echo $sonuc2["foto"] ?>" width="200" height="250" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $sonuc2["baslik"] ?></h5>
                        <p class="card-text"><?php echo $sonuc2["ozet"] ?></p> </a>
                      <!--  <a href="haberOku.php?id=<?// $sonuc2["id"] ?>" class="btn btn-primary">Devamını Oku</a>-->
                    </div>
                    </div>
                    </div>

                    <?php
                }
                ?>
                </div>
            </div>
        </section>

        <!-- Footer-->
        
     
<?php
include("inc/footer.php");
?>     