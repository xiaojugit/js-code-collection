<template>
  <div ref="tagWrap" class="rand-tag">
    <div
      ref="tagItem"
      class="tag-item"
      v-for="item in tagList"
      :key="item.tagCode"
      :style="{
        top: `${item.top}px`,
        left: `${item.left}px`,
        visibility: `${item.visibility}`,
      }"
    >
      {{ item.tagName }} {{ item.total }}
    </div>
  </div>
</template>

<script>
export default {
  name: 'RandTag',
  props: {
    list: {
      type: Array,
      default: () => [],
    },
  },
  data() {
    return {
      tagWrap: {
        h: 0,
        w: 0,
      },
      tagList: [],
      loopSafeValue: 500, //理想情况下，代码会循环获取新的tag项的值以确保和已有tag不重叠。但当tag很多时，不可能不重叠（容器空间有限）。此时循环就会一直找不到不重叠的值而进入死循环。为了防止死循环，设置一个最大循环次数值。超过此值后循环终止
    };
  },
  watch: {
    list: {
      handler(v) {
        this.init(v);
      },
      deep: true,
    },
    tagWrap: {
      handler() {
        this.init(this.list);
      },
      deep: true,
    },
  },

  methods: {
    init(v) {
      if (Array.isArray(v)) {
        /**
         * 先渲染，以便获取宽高
         */
        this.tagList = v.map(item => {
          const _item = Object.assign({}, item, {
            top: 0,
            left: 0,
            visibility: 'visible',
          });
          return _item;
        });

        /**
         * 渲染后获取每个元素宽高，再根据宽高计算位置，重新绘制
         */
        this.$nextTick(() => {
          const list = [];
          const tags = this.$refs.tagItem;
          Array.isArray(tags) &&
            tags.forEach((element, index) => {
              const _item = Object.assign({}, this.tagList[index], {
                top: 0,
                left: 0,
                width: element.clientWidth,
                height: element.clientHeight,
                visibility: 'visible',
              });
              list[index] = this.getPosition(_item, list);
            });

          this.tagList = list;
        });
      }
    },
    /**
     * @description 尽量生成不重叠位置元素
     * @param {Object} tag 需要获取位置元素
     * @param {Array} list 已得到位置元素数组
     */
    getPosition(tag, list) {
      const topLimit = this.tagWrap.h - tag.height - 5;
      const leftLimit = this.tagWrap.w - tag.width - 5;
      let i = 0;
      while (i < this.loopSafeValue) {
        tag.top = Math.ceil(Math.random() * topLimit);
        tag.left = Math.ceil(Math.random() * leftLimit);
        // 如果和已得到位置的元素不重叠，break
        if (!this.isOverlap(tag, list)) {
          break;
        }
        i++;
      }

      return tag;
    },

    /**
     * @description 判断是否和已得到位置的元素对象重叠
     * @param {Object} tag 新生成位置元素
     * @param {Array} list 已得到位置元素数组
     */
    isOverlap(tag, list) {
      var overlap = false;

      for (let i = 0; i < list.length; i++) {
        if (
          tag.left > list[i].left - tag.width - 2 &&
          tag.left < list[i].left + list[i].width + 2 &&
          tag.top > list[i].top - tag.height - 2 &&
          tag.top < list[i].top + list[i].height + 2
        ) {
          //有重叠，break
          overlap = true;
          break;
        }
      }

      return overlap;
    },

    // 窗口变化时重新获取容器宽高
    getTagWrap() {
      Object.assign(this.tagWrap, {
        w: this.$refs.tagWrap.clientWidth,
        h: this.$refs.tagWrap.clientHeight,
      });
    },
  },

  mounted() {
    this.getTagWrap();
    window.addEventListener('resize', this.getTagWrap);
  },

  destroyed() {
    window.removeEventListener('resize', this.getTagWrap);
  },
};
</script>

<style lang="less" scoped>
.rand-tag {
  position: relative;
  width: 100%;
  height: 100%;

  .tag-item {
    position: absolute;
    padding: 3px 10px;
    line-height: 2;
    text-align: center;
    font-weight: 500;
    font-size: 16px;
    border-radius: 3px;
    background-color: #f4f5fb;
    // border: 1px solid #ddd;
    visibility: visible;
  }
}
</style>
