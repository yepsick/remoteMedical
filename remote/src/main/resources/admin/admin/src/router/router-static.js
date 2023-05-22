import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'

import chuzhenxinxi from '@/views/modules/chuzhenxinxi/list'
import config from '@/views/modules/config/list'
import discusschuzhenxinxi from '@/views/modules/discusschuzhenxinxi/list'
import discusskeshixinxi from '@/views/modules/discusskeshixinxi/list'
import jiuzhenpingjia from '@/views/modules/jiuzhenpingjia/list'
import keshixinxi from '@/views/modules/keshixinxi/list'
import messages from '@/views/modules/messages/list'
import news from '@/views/modules/news/list'
import storeup from '@/views/modules/storeup/list'
import token from '@/views/modules/token/list'
import users from '@/views/modules/users/list'
import yisheng from '@/views/modules/yisheng/list'
import yonghu from '@/views/modules/yonghu/list'
import yuyueguahao from '@/views/modules/yuyueguahao/list'
import yuyueshijianduan from '@/views/modules/yuyueshijianduan/list'

//2.配置路由   注意：名字
const routes = [
    {
        path: '/index', name:'index', component: Index, children: [{
            // 这里不设置值，是把main作为默认页面
            path: '/',
            name: 'home',
            component: Home
        },{
            path: '/updatePassword',
            name: 'updatePassword',
            component: UpdatePassword
        } ,{
            path: '/pay',
            name: 'pay',
            component: pay
        } ,{
            path: '/center',
            name: 'center',
            component: center
        }
            ,{
                path: '/chuzhenxinxi',
                name: 'chuzhenxinxi',
                component: chuzhenxinxi
            }
            ,{
                path: '/config',
                name: 'config',
                component: config
            }
            ,{
                path: '/discusschuzhenxinxi',
                name: 'discusschuzhenxinxi',
                component: discusschuzhenxinxi
            }
            ,{
                path: '/discusskeshixinxi',
                name: 'discusskeshixinxi',
                component: discusskeshixinxi
            }
            ,{
                path: '/jiuzhenpingjia',
                name: 'jiuzhenpingjia',
                component: jiuzhenpingjia
            }
            ,{
                path: '/keshixinxi',
                name: 'keshixinxi',
                component: keshixinxi
            }
            ,{
                path: '/messages',
                name: 'messages',
                component: messages
            }
            ,{
                path: '/news',
                name: 'news',
                component: news
            }
            ,{
                path: '/storeup',
                name: 'storeup',
                component: storeup
            }
            ,{
                path: '/token',
                name: 'token',
                component: token
            }
            ,{
                path: '/users',
                name: 'users',
                component: users
            }
            ,{
                path: '/yisheng',
                name: 'yisheng',
                component: yisheng
            }
            ,{
                path: '/yonghu',
                name: 'yonghu',
                component: yonghu
            }
            ,{
                path: '/yuyueguahao',
                name: 'yuyueguahao',
                component: yuyueguahao
            }
            ,{
                path: '/yuyueshijianduan',
                name: 'yuyueshijianduan',
                component: yuyueshijianduan
            }

        ]
    },

    { path: '/login', name:'login', component: Login },
    { path: '/register', name:'register', component: register },
    { path: '/', redirect: '/index/' },      /*默认跳转路由*/
    { path: '*', component: NotFound }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
    mode: 'hash',   /*hash模式改为history*/
    routes // （缩写）相当于 routes: routes
})

export default router;
