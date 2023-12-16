# Godot4-2d角色四方向移动

## 资源下载
[kenney](https://kenney.nl/)

## 如图添加节点
![](http://qncdn.liuxiaobo.pro/yy6y3i78p317026916346361702691633924.png)

## 添加动画
![](http://qncdn.liuxiaobo.pro/izsxparvsf17026916856371702691685494.png)
![](http://qncdn.liuxiaobo.pro/dpa3alnx7p17026917516361702691751051.png)

## 在 Player 添加脚本
```gdscript
extends CharacterBody2D

@onready var animation_player = $AnimationPlayer

## 移动速度
var speed:float = 3500

func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	if (direction.x < 0):
		animation_player.play("left")
	elif (direction.x > 0):
		animation_player.play("right")
	elif (direction.y < 0):
		animation_player.play("up")
	elif (direction.y > 0):
		animation_player.play("down")
	else:
		animation_player.stop()

	velocity = direction * speed * delta
	move_and_slide()

```


## 效果展示
<video width="640" height="480" controls>
  <source src="http://qncdn.liuxiaobo.pro/qv7d3f2w6j170269092065820231216_093228.mp4">
</video>


## 优化

### 位置平滑
![](http://qncdn.liuxiaobo.pro/0os0u5xpak17026919446351702691943962.png)