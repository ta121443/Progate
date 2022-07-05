// // 1.変数の復習
// let number = 0;
// number += 1;
// console.log(number);
// number += 1;
// console.log(number);
// number += 1;
// console.log(number);
// number += 1;
// console.log(number);
// number += 1;
// console.log(number);

// // 2.while文
// let number = 1;

// while(number <= 100){
//     console.log(number);
//     number++;
// }

// // 3.for文
// for(let number=1; number<=100; number++){
//     console.log(number);
// }

// 4.繰り返し処理のまとめ
// for(let number = 1; number <= 100; number++){
//     if(number %3 === 0) {
//         console.log("3の倍数です");
//     } else {
//         console.log(number);
//     }
// }

// // 5.配列とは
// const animals = ["dog", "cat", "sheep"];
// console.log(animals);

// // 6.配列の要素の取得
// const animals = ["dog", "cat", "sheep"];
// console.log(animals[0]);
// console.log(animals[2]);

// // 7. 配列の要素の更新
// const animals = ["dog", "cat", "sheep"];
// animals[2] = "rabbit";
// console.log(animals[2]);

// // 8. 配列と繰り返し
// const animals = ["dog", "cat", "sheep"];
// for(let i=0;i<3;i++){
//     console.log(animals[i]);
// }

// // 9. 配列と繰り返し（２）
// const animals = ["dog", "cat", "sheep", "rabbit", "monkey", "tiger", "bear", "elephant"];
// console.log(animals.length);

// for(let i=0;i<animals.length;i++){
//     console.log(animals[i]);
// }

// // 10. オブジェクト
// const character = {
// name: "にんじゃわんこ",
// age: 14
// };
// console.log(character);

// // 11. オブジェクトの値の取得
// const character = {name: "にんじゃわんこ", age: 14};
// console.log(character.name);
// character.age = 20;
// console.log(character);

// // 12. オブジェクトを要素に持つ配列
// const characters = [
//     {name: "にんじゃわんこ", age: 14},
//     {name: "ひつじ仙人", age: 1000}
//   ];

// console.log(characters[0]);
// console.log(characters[1].name);

// // 13. 配列と繰り返し処理
// const characters = [
//     {name: "にんじゃわんこ", age: 14},
//     {name: "ひつじ仙人", age: 100},
//     {name: "ベイビーわんこ", age: 5},
// ];

// for(let i=0;i<characters.length;i++){
//     console.log("--------------------");
//     const character = characters[i];
//     console.log("名前は" + character.name + "です");
//     console.log(character.age + "歳です");
// }

// // 14. undefinedとは
// const characters = [
//     {name: "にんじゃわんこ", age: 14},
//     {name: "ひつじ仙人", age: 100},
//     {name: "ベイビーわんこ", age: 5},
//     {name: "とりずきん"}
// ];

// for (let i = 0; i < characters.length; i++) {
//     console.log("--------------------");    
//     const character = characters[i];    
//     console.log(`名前は${character.name}です`);
//     console.log(`${character.age}歳です`);
//   }

// // 15. undefinedを避ける
// const characters = [
//     {name: "にんじゃわんこ", age: 14},
//     {name: "ひつじ仙人", age: 100},
//     {name: "ベイビーわんこ", age: 5},
//     {name: "とりずきん"}
//   ];
  
//   for (let i = 0; i < characters.length; i++) {
//     console.log("--------------------");    
//     const character = characters[i];    
//     console.log(`名前は${character.name}です`);
//     if(character.age === undefined) {
//         console.log(`年齢は秘密です`);
//     } else {
//         console.log(`${character.age}歳です`);
//     }
// }

// // 16. 総合演習１
// const cafe = {
//     name: "Progateカフェ",
//     businessHours: {
//         opening: "10:00(AM)",
//         closing: "8:00(PM)"
//     }
// };

// console.log(`店名:${cafe.name}`);
// console.log(`営業時間:${cafe.businessHours.opening}から${cafe.businessHours.closing}`);

// // 17. 総合演習2
// const cafe = {
//     name: "Progateカフェ",
//     businessHours: {
//         opening: "10:00(AM)",
//         closing: "8:00(PM)"
//     },
//     menus: [
//         "コーヒー",
//         "紅茶",
//         "チョコレートケーキ"
//     ]
// };

// for(let i=0;i<cafe.menus.length;i++){
//     console.log(cafe.menus[i]);
// }