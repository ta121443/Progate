// // 1. コールバック関数を学ぼう
// const printWanko = () => {
//     console.log("にんじゃわんこ");
// };
// const printHitsuji = () => {
// console.log("ひつじ仙人");
// };
// const call = (callback) => {
// console.log("コールバック関数を呼び出します。");
// callback();
// };
// // 引数をprintHitsujiに書き換えて出力を確認しましょう
// call(printHitsuji);


// // 2. コールバック関数とは
// const printWanko = () => {
// console.log("にんじゃわんこ");
// };
// // 関数callにcallbackという名前の引数を追加してください
// const call = (callback) => {
// console.log("コールバック関数を呼び出します。");
// // 引数に渡したcallbackを呼び出してください
// callback();
// };
// // 関数printWankoを引数に渡して関数callを実行してください
// call(printWanko);


// // 3. コールバック関数を直接定義する
// const printWanko = () => {
//     console.log("にんじゃわんこ");
// };
// const call = (callback) => {
// console.log("コールバック関数を呼び出します。");
// callback();
// };
// call(printWanko);
// // 引数で関数を定義して渡してください
// call(() => {
//     console.log("ひつじ仙人");
// });


// // 4. コールバック関数の引数
// const call = (callback) => {
// callback("にんじゃわんこ", 14);
// };
// // 関数callの引数の中で2つの引数を取る関数を追加してください
// call((name, age) => {
// console.log(`${name}は${age}歳です。`);
// });