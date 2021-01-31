/**
 * 首页流星雨效果
 * 
 * @author segmentfault Chaz (核心源码来自网络)
 * @class Crood
 * @class ShootingStar
 * @class MeteorShower
 */

// 坐标
class Crood {
    constructor(x=0, y=0) {
        this.x = x;
        this.y = y;
    }
    setCrood(x, y) {
        this.x = x;
        this.y = y;
    }
    copy() {
        return new Crood(this.x, this.y);
    }
}

// 流星
class ShootingStar {
    constructor(angle=Math.PI/2, init=new Crood, final=new Crood, size=3, speed=10, tail=10, onDistory=null) {
        this.angle = angle; // 流星夹角
        this.init = init; // 初始位置
        this.final = final; // 最终位置
        this.size = size; // 大小
        this.speed = speed; // 速度:像素/s
        this.tail = tail; // 尾巴长度

        // 飞行总时间
        this.dur = Math.sqrt(Math.pow(this.final.x-this.init.x, 2) + Math.pow(this.final.y-this.init.y, 2)) * 1000 / this.speed; 
        
        this.pass = 0; // 已过去的时间
        this.prev = this.init.copy(); // 上一帧位置
        this.now = this.init.copy(); // 当前位置
        this.onDistory = onDistory; // 摧毁回调

    }
    draw(ctx, delta) {
        this.pass += delta;
        this.pass = Math.min(this.pass, this.dur);

        const percent = this.pass / this.dur;

        this.now.setCrood(
            this.init.x + (this.final.x - this.init.x) * percent,
            this.init.y + (this.final.y - this.init.y) * percent
        );

        // canvas
        // 创建横向渐变颜色,起点坐标至终点坐标
        const line = ctx.createLinearGradient(
            this.now.x, 
            this.now.y, 
            this.prev.x, 
            this.prev.y
        );

        ctx.beginPath();
        //分段设置颜色
        line.addColorStop(0, "rgba(255, 255, 255, 1)");
        line.addColorStop(0.1, "rgba(255, 255, 255, .9)");
        line.addColorStop(0.2, "rgba(255, 255, 255, .5)");
        line.addColorStop(0.3, "rgba(255, 255, 255, .4)");
        line.addColorStop(0.4, "rgba(255, 255, 255, .3)");
        line.addColorStop(0.6, "rgba(255, 255, 255, .2)");
        line.addColorStop(0.8, "rgba(255, 255, 255, .1)");
        line.addColorStop(1, "rgba(255, 255, 255, 0)");
        ctx.strokeStyle = line;

        ctx.moveTo(this.now.x, this.now.y);
        ctx.lineTo(this.prev.x, this.prev.y);
        ctx.stroke();
        ctx.closePath();
    
        this.prev.setCrood(
            this.now.x + Math.cos(this.angle) * this.tail,
            this.now.y - Math.sin(this.angle) * this.tail 
        );
        if (this.pass === this.dur) {
            this.distory();
        }
    }
    distory() {
        this.onDistory && this.onDistory();
    }
}

// 批量产生流星
class MeteorShower {
    constructor(cvs, ctx) {
        this.cvs = cvs; // cvs对象
        this.ctx = ctx; // 上下文
        this.stars = []; // 流星对象集合
        this.T; // 定时刷新
        this.stop = false;
        this.playing = false;
        this.starsCount = 3; // 流星颗数
    }
    createStar() {
        // 流星划过角度
        const angle = Math.PI / 4;
        // 尾巴长度
        const tail = Math.random() * 200 + 50;
        // 流星划过距离
        const distance = document.body.clientHeight / Math.cos(angle) + tail;
        // 流星初始位置
        const init = new Crood(
            Math.random() * (this.cvs.width + this.cvs.height/ Math.tan(angle))|0,
            0
        );
        // 流星最终位置
        const final = new Crood(
            init.x - distance * Math.cos(angle) < - tail * Math.cos(angle) ? - tail * Math.cos(angle) : init.x - distance * Math.cos(angle) ,
            init.y + distance * Math.sin(angle) > (init.x + tail * Math.cos(angle)) * Math.tan(angle) ? (init.x + tail * Math.cos(angle)) * Math.tan(angle) : init.y + distance * Math.sin(angle)
        );
        // 流星宽度
        const size = 2; 
        // 流星速度
        const speed = Math.random() * 200 + 200;

        // 设置cvs渲染属性 节省部分性能
        this.ctx.lineCap = 'round';
        this.ctx.lineWidth = size;
        const star = new ShootingStar(
            angle, init, final, size, speed, tail,
            () => this.remove(star)
        );
        return star;
    }
    remove(star) {
        this.stars = this.stars.filter((s)=>{ return s !== star });
    }
    update(delta) {
        if (!this.stop && this.stars.length < this.starsCount) {
            this.stars.push(this.createStar());
        }
        
        this.stars.forEach((star)=>{
            star.draw(this.ctx, delta);
        });
    }
    tick() {
        if (this.playing) return;
        this.playing = true;

        let now = (new Date()).getTime();
        let last = now;
        let delta;

        let  _tick = () => {
            if (this.stop && this.stars.length === 0) {
                cancelAnimationFrame(this.T);
                this.playing = false;
                return;
            }

            delta = now - last;
            delta = delta > 500 ? 30 : delta < 16 ? 16 : delta;
            last = now;

            this.T = requestAnimationFrame(_tick);
            this.ctx.save();

            this.stars.forEach((star)=>{
                this.ctx.clearRect(
                        star.now.x < 0 ? 0 : star.now.x, 
                        star.prev.y< 0 ? 0 : star.prev.y, 
                        star.prev.x, 
                        star.now.y
                );
            });

            this.ctx.restore();
            this.update(delta);
        }
        _tick();
    }
    start() {
        this.stop = false;
        this.tick();
    }
    stop() {
        this.stop = true;
    }  
}

// export { MeteorShower };