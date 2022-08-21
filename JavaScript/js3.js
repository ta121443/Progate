// // 1.関数とは（１）
// const greet = function() {
//     console.log("こんにちは！");
//     console.log("関数を学習していきましょう！");
// };

// greet();

// // 2. 関数とは（２）関数の代入
// const hello = function() {
//     console.log("こんにちは！");
//     console.log("私の名前は遼大です");    
// }

// hello();

// // 3. アロー関数
// const greet = () => {
//     console.log("こんにちは！");
// }
// greet();

// // 4. 引数とは
// const greet = (name) => {
//     console.log(`こんにちは、${name}さん`);
// };

// greet("ひつじ仙人");

// // 5. 複数の引数を扱う
// const add = (number1, number2) => {
//     console.log(number1 + number2);
// };

// add(5, 7);

// // 6. 戻り値
// const half = (number) => {
//     return number / 2;
// };

// const result = half(130);
// console.log(`130の半分は${result}です`);

// // 7. 戻り値の活用
// const check = (number) => {
//     return number % 3 === 0;
// };

// if(check(123)) {
//     console.log("3の倍数です");
// } else {
//     console.log("3の倍数ではありません");
// }

// // 8. スコープ
// const name = "ひつじ仙人";
// const introduce = () => {
//     const name = "にんじゃわんこ";
//     console.log(name);
// };
// introduce();
// console.log(name);

// // 9. 総合演習
// const toMinutes = (hour, minute) => {
//     return hour * 60 + minute;
// };

// const result = toMinutes(3, 20);
// console.log(`${result}分`);