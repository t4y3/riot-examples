<child>

  <p>子タグ</p>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      background-color: #fff;
      border-radius: 4px;
    }
  </style>

  <script>
    const style = 'color: #04f; font-size: 1rem;';

    this.on('before-mount', (e) => {
      console.log('%cbefore-mount in child.tag', style);
    });

    this.on('mount', (e) => {
      console.log('%cmount in child.tag', style);
    });

    this.on('unmount', (e) => {
      console.log('%cunmount in child.tag', style);
    });

    this.on('before-unmount', (e) => {
      console.log('%cbefore-unmount in child.tag', style);
    });
  </script>

</child>