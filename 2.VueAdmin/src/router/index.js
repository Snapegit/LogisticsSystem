	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import siji from '@/views/siji/list'
	import daohuoxinxi from '@/views/daohuoxinxi/list'
	import zhongzhuanxinxi from '@/views/zhongzhuanxinxi/list'
	import kehu from '@/views/kehu/list'
	import chengbenhesuan from '@/views/chengbenhesuan/list'
	import huowuleixing from '@/views/huowuleixing/list'
	import jiehuoxinxi from '@/views/jiehuoxinxi/list'
	import peichexinxi from '@/views/peichexinxi/list'
	import gonggaoxinxi from '@/views/gonggaoxinxi/list'
	import huoyundingdan from '@/views/huoyundingdan/list'
	import huoyunpiaoju from '@/views/huoyunpiaoju/list'
	import sijiRegister from '@/views/siji/register'
	import sijiCenter from '@/views/siji/center'
	import kehuRegister from '@/views/kehu/register'
	import kehuCenter from '@/views/kehu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/sijiCenter',
			name: '司机个人中心',
			component: sijiCenter
		}
		,{
			path: '/kehuCenter',
			name: '客户个人中心',
			component: kehuCenter
		}
		,{
			path: '/siji',
			name: '司机',
			component: siji
		}
		,{
			path: '/daohuoxinxi',
			name: '到货信息',
			component: daohuoxinxi
		}
		,{
			path: '/zhongzhuanxinxi',
			name: '中转信息',
			component: zhongzhuanxinxi
		}
		,{
			path: '/kehu',
			name: '客户',
			component: kehu
		}
		,{
			path: '/chengbenhesuan',
			name: '成本核算',
			component: chengbenhesuan
		}
		,{
			path: '/huowuleixing',
			name: '货物类型',
			component: huowuleixing
		}
		,{
			path: '/jiehuoxinxi',
			name: '接货信息',
			component: jiehuoxinxi
		}
		,{
			path: '/peichexinxi',
			name: '配车信息',
			component: peichexinxi
		}
		,{
			path: '/gonggaoxinxi',
			name: '公告信息',
			component: gonggaoxinxi
		}
		,{
			path: '/huoyundingdan',
			name: '货运订单',
			component: huoyundingdan
		}
		,{
			path: '/huoyunpiaoju',
			name: '货运票据',
			component: huoyunpiaoju
		}
		]
	},
	{
		path: '/sijiRegister',
		name: '司机注册',
		component: sijiRegister
	},
	{
		path: '/kehuRegister',
		name: '客户注册',
		component: kehuRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
