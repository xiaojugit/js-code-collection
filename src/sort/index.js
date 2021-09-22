/**
 * 快速排序
 * @param {array} array
 */
let time = 0;
function quickSort(array) {
  if (array.length <= 1) return array;
  const pivot = array[Math.floor(array.length / 2)];
  const left = [];
  const right = [];
  let index = array.length - 1;
  while (index >= 0) {
    if (array[index] < pivot) {
      left.push(...array.splice(index, 1));
    }
    if (array[index] > pivot) {
      right.push(...array.splice(index, 1));
    }

    index--;
  }
  console.log(++time);
  array.unshift(...quickSort(left));
  array.push(...quickSort(right));
  return array;
}

const arr = [4, 6, 2, 3, 7, 5, 1, 10, 8, 9];
quickSort(arr);
console.log(arr);
