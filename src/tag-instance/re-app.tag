<re-app>
  <h2>DOM要素へのアクセス・タグインスタンス</h2>

  <h3>this.refs.sampleでアクセスできる</h3>
  <div class="re-app-sample" ref="re-sample">
    <div class="re-app-sample__view" ref="re-view">
      <p class="sample" ref="sample">sample</p>
    </div>
    <div class="re-app-sample__code">
      <pre class="prettyprint" ref="re-code" if="{ sampleCode }">{ sampleCode[0] }</pre>
    </div>
  </div>

  <h3>this.refs.samples[n]でアクセスできる</h3>
  <div class="re-app-sample" ref="re-sample">
    <div class="re-app-sample__view" ref="re-view">
      <p class="sample" ref="samples">sample</p>
      <p class="sample" ref="samples">sample</p>
      <p class="sample" ref="samples">sample</p>
    </div>
    <div class="re-app-sample__code">
      <pre class="prettyprint" ref="re-code" if="{ sampleCode }">{ sampleCode[1] }</pre>
    </div>
  </div>

  <h3>this.tags['re-child']でアクセスできる</h3>
  <div class="re-app-sample" ref="re-sample">
    <div class="re-app-sample__view" ref="re-view">
      <re-child></re-child>
    </div>
    <div class="re-app-sample__code">
      <pre class="prettyprint" ref="re-code" if="{ sampleCode }">{ sampleCode[2] }</pre>
    </div>
  </div>

  <h3>this.tags['re-child-2'][n]でアクセスできる</h3>
  <div class="re-app-sample" ref="re-sample">
    <div class="re-app-sample__view" ref="re-view">
      <re-child-2></re-child-2>
      <re-child-2></re-child-2>
      <re-child-2></re-child-2>
    </div>
    <div class="re-app-sample__code">
      <pre class="prettyprint" ref="re-code" if="{ sampleCode }">{ sampleCode[3] }</pre>
    </div>
  </div>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      border-radius: 4px;
    }

    h2, h3 {
      margin-bottom: 20px;
    }

    .re-app-sample {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-bottom: 40px;
    }

    .re-app-sample__view {
      flex: 0 0 50%;
    }

    .re-app-sample__code {
      flex: 1 0 50%;
    }

    .sample {
      display: inline-block;
      padding: 10px;
      margin-left: 20px;
      color: #fff;
      background-color: #408bc2;
      border-radius: 4px;
    }

    .re-btns .re-btns__btn:first-child {
      margin-left: 0;
    }
  </style>

  <script>
    this.on('before-mount', () => {
      console.log('%cbefore-mount-----', 'font-size:1.4rem; color:#f04;')
      console.log(this.root);           // rootは取れる
      console.log(this.refs.sample);    // またタグが生成されていないため、undefined
      console.log(this.refs.samples);   // またタグが生成されていないため、undefined
      console.log(this.tags);           // またタグが生成されていないため、空オブジェクト
    });

    this.on('mount', () => {
      console.log('%cmount-----', 'font-size:1.4rem; color:#f04;')
      console.log(this.root);           // rootは取れる
      console.log(this.refs.sample);    // mountイベント時にはタグが生成されているので、ok
      console.log(this.refs.samples);   // mountイベント時にはタグが生成されているので、ok
      console.log(this.tags);           // mountイベント時にはタグが生成されているので、ok

      getCode();
      PR.prettyPrint();
    });

    const getCode = (e) => {
      this.sampleCode = [];
      const len = this.refs['re-sample'].length;
      for (let i = 0; i < len; i++) {
        this.sampleCode[i] = this.refs['re-view'][i].innerHTML.replace(/> </g, '>\r\n<');
      }
      this.update();
    };
  </script>

</re-app>
