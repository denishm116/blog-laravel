<template>
     <div class="btn btn-none author" v-if="article.checker" v-on:click="send"> <i :class="liked"></i>{{like.like}} </div>
    <div class="btn btn-none author" v-else v-on:click="send"> <i :class="unliked"></i>{{like.like}} </div>
</template>

<script>
    export default {
        props: [
            'slug'
        ],
      data: function() {
        return {
            article: [],
            like: [],
            liked: 'fa fa-heart',
            unliked: 'fa fa-heart-o',
            is_refresh: false,
            id: 0,
        }
      },

      mounted() {
           this.update();
         this.likef();
        },

      methods: {

            update: function () {
                axios.get('/test/ajaxTest/' + this.slug).then((response)=>{
                this.article = response.data;
                this.like = this.article.like;
               });
            },

          likef: function() {
              this.like = this.article.like;
              console.log(this.like);
          },
            send: function () {
                axios.get('/blog/article/toggle/' + this.slug).then((response)=>{
                this.like = response.data;
                this.update();
                console.log(this.article.checker)
                });

            }


        }

    }
</script>
