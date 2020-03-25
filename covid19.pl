use strict;
use warnings;
use feature qw { say };
use WWW::Mechanize;

my($a1, $a2, $a3, $a4, $a5, $a6, $a7, $c, $d, $b, $c1, $d1, $c2, $d2, $c3, $d3, $c4, $d4, $x1, $x2, $x3, $x4, $wkt);
sub os {
    if($^O =~ /Win/ || $^O =~ /win/) {
        system("cls");
    } else {
        system("clear");
    }
}

sub banner {
    os();
    $wkt = localtime;
    printf("\033[93m");
    print q {
 _______  _______          _________ ______        __     _____  _________ ______  
(  ____ \(  ___  )|\     /|\__   __/(  __  \      /  \   / ___ \ \__   __/(  __  \ 
| (    \/| (   ) || )   ( |   ) (   | (  \  )     \/) ) ( (   ) )   ) (   | (  \  )
| |      | |   | || |   | |   | |   | |   ) | _____ | | ( (___) |   | |   | |   ) |
| |      | |   | |( (   ) )   | |   | |   | |(_____)| |  \____  |   | |   | |   | |
| |      | |   | | \ \_/ /    | |   | |   ) |       | |       ) |   | |   | |   ) |
| (____/\| (___) |  \   /  ___) (___| (__/  )     __) (_/\____) )___) (___| (__/  )
(_______/(_______)   \_/   \_______/(______/      \____/\______/ \_______/(______/
    };
    say("[ Coded by M.Fazri Nizar ---- covid19.go.id ---- $wkt ]");
}

sub main {
    $a1 = "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x69\x6e\x64\x6f\x6e\x65\x73\x69\x61\x2d\x63\x6f\x76\x69\x64\x2d\x31\x39\x2e\x6d\x61\x74\x68\x64\x72\x6f\x2e\x69\x64\x2f\x61\x70\x69" ;
    $a2 = "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x69\x6e\x64\x6f\x6e\x65\x73\x69\x61\x2d\x63\x6f\x76\x69\x64\x2d\x31\x39\x2e\x6d\x61\x74\x68\x64\x72\x6f\x2e\x69\x64\x2f\x61\x70\x69\x2f\x6b\x61\x73\x75\x73";
    $a3 = "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x69\x6e\x64\x6f\x6e\x65\x73\x69\x61\x2d\x63\x6f\x76\x69\x64\x2d\x31\x39\x2e\x6d\x61\x74\x68\x64\x72\x6f\x2e\x69\x64\x2f\x61\x70\x69\x2f\x6b\x61\x73\x75\x73\x2e\x63\x73\x76";
    $a4 = "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x69\x6e\x64\x6f\x6e\x65\x73\x69\x61\x2d\x63\x6f\x76\x69\x64\x2d\x31\x39\x2e\x6d\x61\x74\x68\x64\x72\x6f\x2e\x69\x64\x2f\x61\x70\x69\x2f\x70\x72\x6f\x76\x69\x6e\x73\x69";
    $a5 = "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x69\x6e\x64\x6f\x6e\x65\x73\x69\x61\x2d\x63\x6f\x76\x69\x64\x2d\x31\x39\x2e\x6d\x61\x74\x68\x64\x72\x6f\x2e\x69\x64\x2f\x61\x70\x69\x2f\x70\x72\x6f\x76\x69\x6e\x73\x69\x2e\x63\x73\x76";
    $a6 = "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x69\x6e\x64\x6f\x6e\x65\x73\x69\x61\x2d\x63\x6f\x76\x69\x64\x2d\x31\x39\x2e\x6d\x61\x74\x68\x64\x72\x6f\x2e\x69\x64\x2f\x61\x70\x69\x2f\x68\x61\x72\x69\x61\x6e";
    $a7 = "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x69\x6e\x64\x6f\x6e\x65\x73\x69\x61\x2d\x63\x6f\x76\x69\x64\x2d\x31\x39\x2e\x6d\x61\x74\x68\x64\x72\x6f\x2e\x69\x64\x2f\x61\x70\x69\x2f\x68\x61\x72\x69\x61\x6e\x2e\x63\x73\x76";
    
    $b = WWW::Mechanize->new();
    $b->agent_alias('Linux Mozilla');

    banner();

    $c = $b->get($a1);
    $d = $c->content;

    if($d =~ m/\"meninggal\":(.*?),\"sembuh\":(.*?),\"perawatan\":(.*?),\"jumlahKasus\":(.*?),/g) {
            print qq {
\t\t\t\033[93m| \033[91mMeninggal : $1 \033[93m| Kasus   : $4 \033[93m|
\t\t\t\033[93m| \033[92mSembuh    : $2 \033[93m| \033[94mDirawat : $3 \033[93m|
            }
    } else {
        print("\033[91m\n\033[93mCheck your internet connection!\n\n\033[93m");
    }
    
    print q {
Opsi:
   1. Detail Kasus Covid-19 di Indonesia
   2. Jumlah Kasus per Provinsi di Indonesia
   3. Jumlah Kasus per Hari di Indonesia
   4. Kontak dan Protokol Kesehatan Resmi Penanganan Covid-19 di Indonesia
   5. Keluar
};
    printf("\nPilihan anda: ");
    chomp($x1 = <STDIN>);

    if($x1 == 1) {
        a();
    } elsif($x1 == 2) {
        b();
    } elsif($x1 == 3) {
        c();
    } elsif($x1 == 4) {
        d();
    } else {
        exit 0;
    }
}

sub a {
    $c1 = $b->get($a2);
    $d1 = $c1->decoded_content;

    while($d1 =~ m/\{\"id\":(.*?),\"kasus\":(.*?),\"klaster\":\"(.*?)\",\"klasterid\":(.*?),\"umur\":(.*?),\"gender\":\"(.*?)\",\"(.*?)\":(.*?),\"status\":\"(.*?)\",\"statusid\":(.*?),\"wn\":\"(.*?)\",\"wnid\":(.*?)\}/g) {
        print qq {
\033[34m$1. | Kasus : $2 | Klaster : $3 | ID Klaster : $4 | Umur : $5 | Jenis Kelamin : $6 | Status : $9 | Kewarganegaraan : $11 |
        };

    }
    sleep(2);

    print("\033[93m\nApakah anda ingin mengunduh detail dalam bentuk file CSV? (y/n)? ");
    chomp($x2 = <STDIN>);

    if($x2 =~ /y/) {
        $b->get( $a3, ":content_file" => 'kasus_covid19id.csv' );
        printf("\nBerhasil terunduh file kasus_covid19id.csv!\n\n");
        sleep(2);
        main();
    } else {
        main();
    }
}

sub b {
    $c2 = $b->get($a4);
    $d2 = $c2->decoded_content;

    while($d2 =~ m/\{\"fid\":(.*?),\"kodeProvi\":(.*?),\"provinsi\":\"(.*?)\",\"kasusPosi\":(.*?),\"kasusSemb\":(.*?),\"kasusMeni\":(.*?)\}/g) {
        print qq {
\033[34m| Provinsi : $3 | Kode Provinsi : $2 | Kasus Positif : $4 | Kasus Sembuh : $5 | Kasus Meninggal $6 |
        }
    }
    sleep(2);

    print("\033[93m\nApakah anda ingin mengunduh detail dalam bentuk file CSV? (y/n)? ");
    chomp($x3 = <STDIN>);

    if($x3 =~ /y/) {
        $b->get( $a5, ":content_file" => 'provinsi_covid19id.csv' );
        printf("\nBerhasil terunduh file provinsi_covid19id.csv!\n\n");
        sleep(2);
        main();
    } else {
        main();
    }
}

sub c {
    $c3 = $b->get($a6);
    $d3 = $c3->decoded_content;

    while($d3 =~ m/\{\"harike\":(.*?),\"tanggal\":(.*?),\"jumlahKasusBaruperHari\":(.*?),\"jumlahKasusKumulatif\":(.*?),\"jumlahpasiendalamperawatan\":(.*?),\"persentasePasiendalamPerawatan\":(.*?),\"jumlahPasienSembuh\":(.*?),\"persentasePasienSembuh\":(.*?),\"jumlahPasienMeninggal\":(.*?),\"persentasePasienMeninggal\":(.*?),\"jumlahKasusSembuhperHari\":(.*?),\"jumlahKasusMeninggalperHari\":(.*?),\"fid\":(.*?)\}/g) {
        print qq {
\033[34m------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| Hari ke : $1 | Tanggal : $2 | Kasus/hari : $3 | Kasus Kumultatif : $4 | Pasien Dirawat : $5 | Persentase Pasien Dirawat : $6\% | Pasien Sembuh : $7 | Persentase Pasien Sembuh : $8\% | Pasien Meninggal : $9 | Persentase Pasien Meninggal : $10\% | Kasus Sembuh/hari : $11 | Kasus Meninggal/hari : $12 |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        }
    }
    sleep(2);

    print("\033[93m\nApakah anda ingin mengunduh detail dalam bentuk file CSV? (y/n)? ");
    chomp($x3 = <STDIN>);

    if($x3 =~ /y/) {
        $b->get( $a7, ":content_file" => 'harian_covid19id.csv' );
        printf("\nBerhasil terunduh file harian_covid19id.csv!\n\n");
        sleep(2);
        main();
    } else {
        main();
    }
}

sub d {
    banner();

    print q {
                    +KONTAK+RESMI+++++++++++++++++++++++++++++++++++++++++++++++++
                    | Website Resmi            : https://covid19.go.id           |
                    | Kontak WA COVID-19.GO.ID : https://wa.me/6281133399000     |
                    | Hotline Center Covid-19  : Telepon 119                     |
                    | Video Protokol Kesehatan : https://youtu.be/3ooqLbCdVug    |
                    +KONTAK+SAYA++++++++++++++++++++++++++++++++++++++++++++++++++
                    | Kontak WA                : https://wa.me/6285218563293     |
                    | Kontak Email             : anon6372098.id@gmail.com        |
                    | Kontak Instagram         : @anon6372098                    |
                    ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    };                 
    sleep(2);

    print("\033[93m\nApakah anda ingin kembali lagi (y/n)? ");
    chomp($x4 = <STDIN>);

    if($x4 =~ /y/) {
        main();
    } else {
        exit 0;
    }
}

main();
