#!usr/bin/tamfan/perl
#Cie mau recode ya ? ga malu tuh v: otodidak dong. Game gua ko mau di recode
#Author By : Prakasa_Jr64 && TUANB4DUT
#Team : UYSFDS MrTamfanX - Buitenzorg Syndicate.io - MrTamfanX Cyber Team
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
use Game::Battleship;
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
mrtamfanx();
menukas();
sub mrtamfanx {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print color('bold red'),"┏━━━┓  ┳    ┳ ┳ ┏━━┳━━┓ ┏━━━━┓ ┏━┓ ┳ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓\n";
print color('bold red'),"┃┏━┓┗┓ ┃    ┃ ┃ ┃  ┃  ┃ ┃    ┃ ┃ ┃ ┃ ┻   ┏┛ ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃┗━┛ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃    ┏┛  ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃  ━━┫ ┃    ┃ ┃    ┃    ┣━━━   ┃ ┃ ┃   ┏┛   ┃    ┃ ┣━━┳━┛ ┃ ━━━┓\n";
print color('bold white'),"┃┏━┓ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃  ┏┛    ┃    ┃ ┃  ┗┓  ┃    ┃\n";
print color('bold white'),"┃┗━┛┏┛ ┃    ┃ ┃    ┃    ┃    ┃ ┃ ┃ ┃ ┏┛   ┳ ┃    ┃ ┃   ┃  ┃    ┃\n";
print color('bold white'),"┗━━━┛  ┗━━━━┛ ┻    ┻    ┗━━━━┛ ┻ ┗━┛ ┗━━━━┛ ┗━━━━┛ ┻   ┻  ┗━━━━┛\n";
print color('bold cyan'),"┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\n";
print color('bold cyan'),"┃";
print color('bold red'),"Author ";
print color('bold green'),": ";
print color('bold white'),"MrTamfanX ";
print color('bold red'),"&& ";
print color('bold white'),"TUANB4DUT ";
print color('bold blue'),"Team ";
print color('bold green'),": ";
print color('bold red'),"Buitenzorg Syndicate.io";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┃";
print color('bold white'),"Hubungi Contact WhatsApp ";
print color('bold green'),": 62 857";
print color('bold white'),"-";
print color('bold green'),"8041";
print color('bold white'),"-";
print color('bold green'),"1404 ";
print color('bold red'),"& ";
print color('bold green'),"62 812";
print color('bold white'),"-";
print color('bold green'),"2121";
print color('bold white'),"-";
print color('bold green'),"5191";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold cyan'),"┃";
print color('bold yellow'),"This Tool Is A Tool For Playing Games When You Are Bored & Try";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\n";
print color('bold red'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Tanggal ";
print color('bold green'),": ";
print color('bold yellow'),"$mday ";
print color('bold white'),"Hari ";
print color('bold green'),": ";
print color('bold yellow'),"$days[$wday] ";
print color('bold white'),"Bulan ";
print color('bold green'),": ";
print color('bold yellow'),"$months[$mon] ";
print color('bold white'),"Tahun ";
print color('bold green'),": ";
print color('bold yellow'),"$years\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Jam ";
print color('bold green'),": ";
print color('bold yellow'),"$hour ";
print color('bold green'),": ";
print color('bold yellow'),"$min ";
print color('bold green'),": ";
print color('bold yellow'),"$sec\n\n";
}
sub menukas {
print nomerkas3(),"";
print nomerkas(),"";
chomp($akas=<STDIN>);
print nomerkas1(),"";
chomp($akasenemy=<STDIN>);
print "\n";
print nomerkas023(),"";
sleep(3);
print nomerkas8(),"";
chomp($akass=<STDIN>);
if($akass eq 'START'){
mrtamfanx();
sleep(3);
my $gilang = Game::Battleship->new;
$gilang->add_player($akas);
$gilang->add_player($akasenemy);
my $akasmenang = $gilang->play();
print $akasmenang->name(), " Wins Wins Wins!!!\n";
}if($akass eq 'start'){
mrtamfanx();
sleep(3);
my $gilang = Game::Battleship->new;
$gilang->add_player($akas);
$gilang->add_player($akasenemy);
my $akasmenang = $gilang->play();
print $akasmenang->name(), " Wins Wins Wins!!!\n";
}
}
sub nomerkas
{
    my $n = shift // 'ME';
    return color('bold white'),"[ "
    , color('bold green'),"$n"
    , color('bold white')," ] TYPE YOUR NAME "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}

sub nomerkas1

{
    my $n = shift // 'ENEMY';
    return color('bold white'),"[ "
    , color('bold green'),"$n"
    , color('bold white')," ] TYPE YOUR ENEMY "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}
sub nomerkas3
{
    my $n = shift // 'INFO';
    return color('bold white'),"[ "
    , color('bold red'),"$n"
    , color('bold white')," ] Example  "
    , color('bold green'),": "
    , color('bold yellow'),"Prakasa "
    , color('bold red'),"Your Enemy "
    , color('bold yellow'),"Putra\n\n"
    , color('bold white')
    ;
}
sub nomerkas8
{
    my $n = shift // 'START';
    return color('bold white'),"[ "
    , color('bold green'),"$n"
    , color('bold white')," ] "
    , color('bold cyan'),"TYPE START OR NOT(START/NOT) "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas023
{
    my $n = shift // 'FIGHT';
    return color('bold white'),"[ "
    , color('bold green'),"$n"
    , color('bold white')," ] Fighting between the two  "
    , color('bold green'),": "
    , color('bold white'),"$akas "
    , color('bold red'),"VS "
    , color('bold white'),"$akasenemy\n"
    , color('bold white')
    ;
}
