<parent>

  <p>親タグ</p>

  <div class="btns">
    <div class="btns__btn" onclick="{ addChild }">
      子タグを追加
    </div>

    <div class="btns__btn" onclick="{ removeChild }">
      子タグを削除
     </div>
  </div>

  <child if="{ hasChild }"></child>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      background-color: #efefef;
      border-radius: 4px;
    }

    .btns {
      display: flex;
      margin-bottom: 50px;
    }

    .btns__btn {
      display: inline-block;
      padding: 10px;
      margin-left: 20px;
      background-color: #f04;
      border-radius: 4px;
      color: #fff;
      cursor: pointer;
    }
    .btns__btn:first-child {
        margin-left: 0;
    }
  </style>

  <script>
    this.hasChild = true;
    const style = 'color: #f04; font-size: 1rem;';

    this.addChild = () => {
      this.hasChild = true;
    };

    this.removeChild = () => {
      this.hasChild = false;
    };

    this.on('before-mount', (e) => {
      console.log('%cbefore-mount in parent.tag', style);
    });

    this.on('mount', (e) => {
      console.log('%cmount in parent.tag', style);
    });

    this.on('unmount', (e) => {
      console.log('%cunmount in parent.tag', style);
    });

    this.on('before-unmount', (e) => {
      console.log('%cbefore-unmount in parent.tag', style);
    });
  </script>

</parent>