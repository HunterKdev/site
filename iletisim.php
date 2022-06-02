<?php
$sayfa ="İletisim";
include("inc/vt.php");
include("inc/head.php");
session_start();
if($_POST["txtAd"]=="")
{     
        $kadi="";
        $mail="";
        $mesaj="";        
    }
    else
    { $kadi=$_POST["txtAd"];
        $mail=$_POST["txtEmail"];
        $mesaj=$_POST["txtMesaj"];}
?>

        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h3 class="section-heading text-uppercase mt-3">İletişim</h3>
                    <h5 class="section-subheading text-muted">Sizi arayalım.</h5>
                </div>
                <form id="contactForm" name="sentMessage" method="post" action="iletisim.php">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control" id="name" name="txtAd" value="<?php echo $kadi ?>" type="text" placeholder="Ad Soyad *" required="required" data-validation-required-message="Please enter your name." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="email" name="txtEmail" value="<?php echo $mail ?>"type="email" placeholder="Email Adresiniz *" required="required" data-validation-required-message="Please enter your email address." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                            <img src="inc/captcha.php" id="capt">/*php.ini den extension=gd başındaki ; kaldır*/
                                <input class="form-control" id="captcha" name="captcha"type="text" placeholder="Güvenlik kodunu giriniz *" required="required" data-validation-required-message="doğrulama kodunu giriniz" />
                                <p class="help-block text-danger"></p>
                            </div>
                            
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <textarea class="form-control" id="message" name="txtMesaj" placeholder="Mesajınız *" required="required" data-validation-required-message="Please enter a message."><?php echo $mesaj ?></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div id="success"></div>
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Mesajını Gönder</button>
                    </div>
                </form>
                <script src="js/sweetalert2.all.min.js"></script>
                <?php
                if($_POST){
                   

                    if($_SESSION["captcha"] ==$_POST["captcha"])
                {

                    $sorgu=$baglanti->prepare('insert into iletisim SET ad=:ad, email=:email, mesaj=:mesaj');
                    $ekle=$sorgu->execute(
                        [
                        'ad'=>htmlspecialchars($_POST["txtAd"]),
                        'email'=>htmlspecialchars($_POST["txtEmail"]),
                        'mesaj'=>htmlspecialchars($_POST["txtMesaj"]),
                        ]

                    );
                    if($ekle)
                    {
                       
                    echo "<script> Swal.fire({
                        position: 'top-center',
                        icon: 'success',
                        title: 'Mesajınız iletildi',
                        showConfirmButton: true,
                        timer: 3000
                      })</script>";
                    }
                }
                    else
                    {
                        echo "<script> Swal.fire({
                            position: 'top-center',
                            icon: 'error',
                            title: 'Doğrulama kodunu yanlış girdiniz',
                            showConfirmButton: true,
                          
                          })</script>";
                    }
                }
                ?>
            </div>
        </section>
        
<?php
include("inc/footer.php");
?>     