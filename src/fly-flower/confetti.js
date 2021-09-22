/**
 * 网页庆祝撒花
 */
class Confetti {
  /**
   * @description 构造函数
   * @param {object} options 选项
   * @param {string} options.el 画布id
   * @param {number} options.gravity 重力
   */
  constructor(options) {
    this.options = options || {};
    /** @type {HTMLCanvasElement} */
    this.canvas = null;
    /** @type {CanvasRenderingContext2D} */
    this.ctx = null;

    this.initCanvas();
    this.drawImage();
  }

  initCanvas() {
    if (this.options.el) {
      this.canvas = document.getElementById(options.el);
    }
    if (!this.canvas) {
      this.canvas = document.createElement('canvas');
      document.body.appendChild(this.canvas);
    }
    this.ctx = this.canvas.getContext('2d');
    this.canvas.style = 'border: 1px dashed #ccc;';
    this.canvas.width = 400;
    this.canvas.height = 600;
  }

  drawImage() {
    const img = new Image();
    img.src = '1piece_of_pedal.png';
    img.onload = () => {
      for (let i = 0; i < 20; i++) {
        const cImg = img.cloneNode();
        this.ctx.drawImage(cImg, 20 * i, 30 * i, 20, 20);
      }
    };
  }

  createConfetti() {}

  updateConfetti() {}

  renderConfetti() {}
}

export default Confetti;
