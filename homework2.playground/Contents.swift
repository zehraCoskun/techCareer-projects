import UIKit

// MARK: Ödev 2.1

func soru1(derece: Int) -> Double {
    let dereceDouble = Double(derece)
    let sonuc = (dereceDouble * 1.8) + 32.0
    return sonuc
}
print("\(soru1(derece: 12)) Fahrenhiet")


func soru2(kisa: Int, uzun: Int) -> Int{
    let sonuc = 2 * (kisa + uzun)
    return sonuc
}
print("Çevresi : \(soru2(kisa: 3, uzun: 4))")


func soru3(sayi: Int) -> Int{
    var sonuc = 1
    for i in 1...sayi {
        sonuc = sonuc * i
    }
    return sonuc
}
print("Faktöriyel : \(soru3(sayi: 5))")


func soru4(kelime: String) -> Int {
    var sonuc = 0
    for i in kelime {
        if i == "a" {
            sonuc += 1
        }
    }
    return sonuc
}
print("A sayısı : \(soru4(kelime: "merhaba"))")


// MARK: Ödev 2.2

func soru11(kenar: Int) -> Int {
    let sonuc = (kenar - 2) * 180
    return sonuc
}
print("İç açılar toplamı : \(soru11(kenar: 4))")


func soru22(gun: Int) -> Int {
    var sonuc = 0
    if gun <= 20 {
        sonuc = 80 * gun
    } else {
        let mesaiGunu = gun - 20
        sonuc = (80 * 20) + (mesaiGunu * 160)
    }
    return sonuc
}
print("Maaş : \(soru22(gun: 24))")


func soru33(kota: Int) -> Int{
    var sonuc = 0
    if kota <= 50 {
        sonuc = 100
    } else {
        sonuc = 100 + ((kota - 50) * 4)
    }
    return sonuc
}
print("Ücret : \(soru33(kota: 51))")
