## 组件生命周期
- `beforeCreate`
实例已经开始初始化之后调用 【数据初始化未完成，页面没有开始渲染】
- `created`
实例创建完成之后调用 【组件创建完成，不代表组件已挂载到页面】
- `beforeMount`
在挂载开始之前被调用。
- `mounted`
挂载到实例上去之后调用。 注意：此处并不能确定子组件被全部挂载，如果需要子组件完全挂载之后在执行操作可以使用$nextTickVue官方文档
- `beforeUpdate`
数据更新时调用，发生在虚拟 DOM 打补丁之前。仅H5平台支持
- `updated`
由于数据更改导致的虚拟 DOM 重新渲染和打补丁，在这之后会调用该钩子。仅H5平台支持
- `beforeDestroy`
实例销毁之前调用。在这一步，实例仍然完全可用。
- `destroyed`
Vue实例销毁后调用。调用后，Vue实例指示的所有东西都会解绑定，所有的事件监听器会被移除，所有的子实例也会被销毁。

## 页面生命周期
- `onLoad`
监听页面加载，其参数为上个页面传递的数据，参数类型为object（用于页面传参）
- `onShow`
监听页面显示
- `onReady`
监听页面初次渲染完成
- `onHide`
监听页面隐藏
- `onUnload`
监听页面卸载
- `onPullDownRefresh`
监听用户下拉动作
- `onReachBottom`
页面上拉触底事件的处理函数
- `onShareAppMessage`
用户点击右上角分享 微信小程序
- `onPageScroll`
监听页面滚动
- `onTabItemTap`
当前是 tab 页时，点击 tab 时触发。