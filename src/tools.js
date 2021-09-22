/**
 * @description 浏览器下载文件，注意文件大小，有限制
 * @param {string} data 文件流
 * @param {string} ext 扩展名
 */
const downloadFile = (data, ext) => {
  let dataURL = window.URL.createObjectURL(data);
  let link = document.createElement('a');
  link.style.display = 'none';
  link.href = dataURL;
  link.setAttribute('download', `${Date.now()}.${ext}`);
  document.body.appendChild(link);
  link.click();
  link.remove();
  // document.body.removeChild(link);
  window.URL.revokeObjectURL(dataURL);
};

/**
 * @description 模版解析引擎
 * @param {string} tpl 模版字符串
 */
const TmplEngine = tpl => {
  this.render = new Function(
    'data',
    "var p=[];p.push('" +
      tpl
        .replace(/[\r\t\n]/g, ' ')
        .split('<@')
        .join('\t')
        .replace(/((^|@>)[^\t]*)'/g, '$1\r')
        .replace(/\t=(.*?)@>/g, "',$1'")
        .split('\t')
        .join("');")
        .split('@>')
        .join("p.push(')")
        .split('\r')
        .join("\\'") +
      "');return p.join('');"
  );
};

/**
 * @description 二维数组旋转
 * @param {array} grid 二维数组
 * @param {*} degree 旋转角度 90 180 270
 */
function roateGrid(grid, degree) {
  const result = [],
    rows = grid.length,
    cols = grid[0].lenght;

  if (degree === 180) {
    for (let r = 0; r < rows; r++) {
      result[c] = [];
      for (let c = 0; c < cols; c++) {
        result[r][c] = grid[rows - r - 1][cols - c - 1];
      }
    }
  } else {
    for (let c = 0; c < cols; c++) {
      result[c] = [];
      for (let r = 0; r < rows; r++) {
        result[c][r] =
          degree === 90 ? grid[rows - r - 1][c] : grid[r][cols - c - 1];
      }
    }
  }
}
