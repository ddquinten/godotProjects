GDPC                                                                            !   <   res://.import/ball.png-022d1e0b844ef311d0d4c1c0b3a3a6e0.stex�8      �       ���g�0�U9�[@   res://.import/brick.png-f47071a539c0de32b93ea8e9bf921ea9.stex   0<      �       �FQ�� C�S 4H�G<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@C      U      -��`�0��x�5�[@   res://.import/paddle.png-66532f7eb85b20ecb094d6fe70e06eb2.stex  p?      �       ��=�����x���8�   res://Mini-Scenes/Ball.tscn 0	            te��<���6��� u   res://Mini-Scenes/Brick.tscnP            �uo���E6.Z���X   res://Mini-Scenes/GUI.tscn  `      [      ��Q�=���@Ƶ$#<&   res://Scenes/LevelOne.tscn  �      �      ������l}[���1�n   res://Scripts/Ball.gd.remap  S      '       A������xE��   res://Scripts/Ball.gdc  �!      )      XhK ]d[`��oq:�p�    res://Scripts/Bottom.gd.remap   PS      )       ��>�u��)!��Q��   res://Scripts/Bottom.gdc�&      �      m�]�	��A?"qzK�   res://Scripts/Lives.gd.remap�S      (       ;�E�ywv��a�}�.   res://Scripts/Lives.gdc p)      O      u��_�r:���I%    res://Scripts/Paddle.gd.remap   �S      )       ćQ��9#�D[P,   res://Scripts/Paddle.gdc�+      �      �O��	t�ha*4cX�   res://Scripts/Pause.gd.remap�S      (       ��`��iT�
�/\�   res://Scripts/Pause.gdc P1      ;      �	4$�3 ����&��Z   res://Scripts/Score.gd.remapT      (       e`��\I7��@h�   res://Scripts/Score.gdc �2      8      mg6Ѭ�lM����%�K$   res://Scripts/displayLives.gd.remap @T      /       E��s+�7uwo�!j$�s    res://Scripts/displayLives.gdc  �4      -      B��Ǽ[��v���T @$   res://Scripts/globalVars.gd.remap   pT      -       ��V�\�<s%�xڠ�   res://Scripts/globalVars.gdc 6      �       �J{�Y�1��z6��   res://Scripts/main.gd.remap �T      '       o�s�8` �����   res://Scripts/main.gdc  �6      (      �q-D���J���z���(   res://Textures/Sprites/ball.png.import  �9      �      F��S1��G�p¯�(   res://Textures/Sprites/brick.png.import �<      �      ¶�=#��u��6|��(   res://Textures/Sprites/paddle.png.import�?      �      :�VTW�{��_�����   res://default_env.tres  �B      �       um�`�N��<*ỳ�8   res://icon.png  �T      �      G1?��z�c��vN��   res://icon.png.import   �P      �      �����%��(#AB�   res://project.binary�a      �      y���)s�f�υ+��A        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Textures/Sprites/ball.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Ball.gd" type="Script" id=2]

[sub_resource type="PhysicsMaterial" id=1]
friction = 0.0
bounce = 1.0

[sub_resource type="CircleShape2D" id=5]
radius = 4.0

[node name="Ball" type="RigidBody2D"]
mode = 2
physics_material_override = SubResource( 1 )
gravity_scale = 0.0
contacts_reported = 1
contact_monitor = true
linear_velocity = Vector2( 200, -200 )
linear_damp = 0.0
angular_damp = 0.0
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 5 )
__meta__ = {
"_edit_lock_": true
}
      [gd_scene load_steps=3 format=2]

[ext_resource path="res://Textures/Sprites/brick.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 30.4187, 14.6995 )

[node name="Brick" type="StaticBody2D" groups=[
"Bricks",
]]

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
__meta__ = {
"_edit_lock_": true
}
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Score.gd" type="Script" id=1]
[ext_resource path="res://Scripts/Lives.gd" type="Script" id=2]

[node name="GUI" type="Node2D"]

[node name="Score" type="Label" parent="."]
margin_top = 2.0
margin_right = 43.0
margin_bottom = 16.0
text = "Score: "
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Value" type="Label" parent="Score"]
anchor_left = -0.0162396
anchor_right = -0.0162396
margin_left = 42.6936
margin_top = 0.698318
margin_right = 82.6936
margin_bottom = 14.6983
text = "0000"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Lives" type="Label" parent="."]
margin_left = 570.763
margin_top = 1.15482
margin_right = 611.763
margin_bottom = 15.1548
text = "Lives: "
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}
paddingLength = 1

[node name="Value" type="Label" parent="Lives"]
anchor_left = -0.0162396
anchor_right = -0.0162396
margin_left = 39.3733
margin_top = 1.27213
margin_right = 79.3733
margin_bottom = 15.2721
text = "3"
__meta__ = {
"_edit_use_anchors_": false
}
     [gd_scene load_steps=10 format=2]

[ext_resource path="res://Textures/Sprites/paddle.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Pause.gd" type="Script" id=2]
[ext_resource path="res://Scripts/Paddle.gd" type="Script" id=3]
[ext_resource path="res://Mini-Scenes/GUI.tscn" type="PackedScene" id=4]
[ext_resource path="res://Scripts/main.gd" type="Script" id=5]
[ext_resource path="res://Mini-Scenes/Brick.tscn" type="PackedScene" id=7]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 40.0956, 3.95493 )

[sub_resource type="PhysicsMaterial" id=2]
friction = 0.0

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 320, 4.11429 )

[node name="World" type="Node2D"]
script = ExtResource( 5 )

[node name="Paddle" type="KinematicBody2D" parent="."]
position = Vector2( 314.075, 334.92 )
script = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="Paddle"]
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Paddle"]
shape = SubResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="Anchor" type="Position2D" parent="Paddle"]
position = Vector2( 0, 32 )

[node name="Walls" type="StaticBody2D" parent="."]

[node name="Collision" type="CollisionPolygon2D" parent="Walls"]
polygon = PoolVector2Array( 0, 384, 0, 0, 640, 0, 640, 384, 704, 384, 704, -64, -64, -64, -64, 384 )
__meta__ = {
"_edit_lock_": true
}

[node name="Bricks" type="Node2D" parent="."]

[node name="Brick" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 320, 80 )

[node name="Brick2" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 384, 80 )

[node name="Brick3" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 384, 112 )

[node name="Brick4" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 320, 112 )

[node name="Brick5" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 256, 112 )

[node name="Brick6" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 256, 80 )

[node name="Brick7" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 192, 80 )

[node name="Brick8" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 448, 80 )

[node name="Brick9" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 448, 112 )

[node name="Brick10" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 384, 144 )

[node name="Brick11" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 320, 144 )

[node name="Brick13" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 512, 80 )

[node name="Brick15" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 128, 80 )

[node name="Brick12" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 256, 144 )

[node name="Brick14" parent="Bricks" instance=ExtResource( 7 )]
position = Vector2( 192, 112 )

[node name="Bottom" type="StaticBody2D" parent="."]
physics_material_override = SubResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Bottom"]
position = Vector2( 320, 363.62 )
shape = SubResource( 3 )
__meta__ = {
"_edit_lock_": true
}

[node name="CanvasLayer" type="CanvasLayer" parent="."]
layer = 128

[node name="Pause" type="Control" parent="CanvasLayer"]
pause_mode = 2
visible = false
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -640.0
margin_top = -360.0
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": true
}

[node name="ColorRect" type="ColorRect" parent="CanvasLayer/Pause"]
anchor_right = 1.0
anchor_bottom = 1.0
color = Color( 0, 0, 0, 0.364706 )
__meta__ = {
"_edit_use_anchors_": true
}

[node name="GUI" parent="." instance=ExtResource( 4 )]
GDSC      
      �      ��������τ�   �������   �������򶶶�   ��������Ŷ��   �������Ӷ���   ���ض���   �����϶�   ������������������Ŷ   ���������������Ŷ���   �����׶�   �����Ŷ�   �������������������Ŷ���   ���϶���   ����������ƶ   �����������϶���   ���������Ӷ�   �������Ӷ���   ����Ҷ��   ��������������϶   �����޶�   ��������ض��   �����������ض���   ������������������ض   �������϶���   ���������Ҷ�   ������������������϶   ���������¶�   �������Ӷ���   ����Ŷ��   �������Ķ���         ,        /root/GlobalVars      /root/World             Bricks        Paddle        Anchor        Bottom                                                           &   	   +   
   ,      3      :      ;      A      J      Q      W      a      j      |      �      �      �      �      �      �      �      �      3YY:�  Y:�  �  Y5;�  �  P�  QY5;�  �  P�  QYY0�  PQV�  �  P�  QYY0�  P�	  QV�  ;�
  �  PQ�  �  )�  �
  V�  &�  T�  P�  QV�  �  T�  PQS�  �  T�  PQ�  &�  T�  PQ�  V�  ;�  �  T�  PQ�  ;�  �  PQ�  T�  P�  QT�  PQ�  ;�  �  T�  PQ�4  PP�  �  QR�  Q�  �  P�  Q�  &�  T�  PQ�  V�  �  T�  �	  �  �  T�  PQ�  &�  T�  �	  V�  �  T�  PQ�  �  PQY`       GDSC            _      ��������τ�   ��������Ŷ��   �������Ӷ���   �����϶�   ������������������Ŷ   ���������������Ŷ���   �����׶�   �����Ŷ�   �������������������Ŷ���   ���϶���   �������Ӷ���   ���������¶�   ����Ŷ��   ���������Ӷ�      /root/GlobalVars            Ball      ..                     vals updated                                                     	   '   
   (      .      8      A      Q      V      \      ]      3YY5;�  �  PQYY0�  PQV�  �  P�  QYY0�  P�  QV�  ;�  �  PQ�  �  )�	  �  V�  &�	  T�
  PQ�  V�  �  P�  QT�  �  �  �  P�  QT�  �  P�  QT�  �  �  �?  P�  Q�  �	  T�  PQYY`   GDSC            ^      ����ڶ��   ������������޶��   ��������Ŷ��   �������Ӷ���   ����Ӷ��   �����϶�   �����Ӷ�   ����¶��   �����¶�   ����Ӷ��   ����Ӷ��   ���¶���            /root/GlobalVars            %0*d                                                 #   	   '   
   (      .      2      6      7      >      B      F      G      M      \      63YY8P�  Q;�  Y5;�  �  P�  QYY;�  �  YY0�  PQV�  �  PQ�  Y0�  PQV�  �  �  �  �  PQYY0�  P�	  QV�  �  �	  �  �  PQYY0�  PQV�  W�
  T�  P�  L�  R�  MQY` GDSC      	   -   �      ������������τ�   ���������Ӷ�   ��������Ŷ��   �������Ӷ���   �������϶���   �����϶�   ������������������Ŷ   ����������������¶��   ���������������Ŷ���   �����׶�   ϶��   �����������ض���   ����¶��   ����������������Ҷ��   ζ��   ����������   �������������Ӷ�   �����¶�   �����¶�   ���������¶�   ����Ŷ��   ���ڶ���   �������Ӷ���   �����������ض���   �������Ӷ���   �������¶���   ��������Ҷ��      res://Mini-Scenes/Ball.tscn       /root/GlobalVars            ui_left       ui_right             shoot                                                          "      '   	   ,   
   -      .      /      0      1      2      3      4      ;      E      F      O      X      a      i      l      r      ~            �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   3YY:�  ?PQY5;�  �  P�  QY;�  �  PQYY0�  PQV�  �  P�  Q�  �  P�  QYYYYYYYYY0�  P�	  QV�  �  T�
  �  PQT�
  �  �  &�  T�  P�  QV�  �  T�  �  T�  �  '�  T�  P�  QV�  �  T�  �  T�  �  (V�  �  T�  �  �  �  P�  R�  P�  R�  QQYY0�  P�  QV�  &�  T�  P�  QV�  &P�  T�  �  �  T�  �  QV�  ;�  �  T�  PQ�  �  T�  P�  PQ�  P�  R�  QQ�  �  PQT�  PQT�  P�  Q�  �  T�  �  YYYYYYYYYY` GDSC            +      ������ڶ   �����¶�   ����¶��   ����������������Ҷ��   ��������������Ӷ   �������Ӷ���   �����Ҷ�   ������Ӷ      pause                      
                  %      )      3YY0�  P�  QV�  &�  T�  PQV�  ;�  �  PQT�  �  �  PQT�  �  �  �  �  Y`     GDSC            _      ����ڶ��   ������������޶��   ����Ӷ��   �����϶�   �����Ӷ�   ����¶��   �����¶�   ����Ӷ��   �������Ӷ���   ����Ӷ��   ���¶���                   %0*d                                                    	      
   %      )      -      .      5      9      =      >      D      G      H      N      ]      63YY8P�  Q;�  YY;�  �  YY0�  PQV�  �  PQ�  Y0�  PQV�  �  �  �  �  PQYY0�  P�  QV�  �  �  �  �  PQYY0�  PQV�  .�  YY0�  PQV�  W�	  T�
  P�  L�  R�  MQY`        GDSC            %      ������������ڶ��   ��������Ŷ��   �������Ӷ���   ���������Ŷ�   �����¶�   ����Ŷ��   �������¶���      /root/GlobalVars      Lives:                                       #      3Y5;�  �  PQYY0�  PQV�  ;�  �  �>  P�  T�  Q�  �  P�  QY`   GDSC                  ���ӄ�   ���������¶�   ����Ŷ��   ����������                �                                        3YY;�  Y;�  �  Y;�  �  Y`     GDSC   	         P      ���ӄ�   ��������Ŷ��   �������Ӷ���   �����������϶���   �����¶�   �������Ӷ���   ����Ŷ��   �������Ķ���   �������Ӷ���      /root/GlobalVars   	   GUI/Score      d            	   GUI/Lives      	   game over         Score:                                             #      )   	   4   
   5      ;      @      N      3Y5;�  �  PQYY0�  PQV�  �  P�  QT�  P�  QYY0�  PQV�  �  T�  �  �  �  P�  QT�  P�  QYY0�  PQV�  �?  P�  Q�  �?  P�  R�  P�  QT�  PQQY`        GDST              x   PNG �PNG

   IHDR         ���   sRGB ���   .IDAT�c���?�P�������@ �`щb"A(W�� u-�� �C�r�#    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball.png-022d1e0b844ef311d0d4c1c0b3a3a6e0.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Sprites/ball.png"
dest_files=[ "res://.import/ball.png-022d1e0b844ef311d0d4c1c0b3a3a6e0.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST               z   PNG �PNG

   IHDR          w }Y   sRGB ���   0IDATH�c����0��J� ���b8u��F0�Q�: V2� �q����    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/brick.png-f47071a539c0de32b93ea8e9bf921ea9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Sprites/brick.png"
dest_files=[ "res://.import/brick.png-f47071a539c0de32b93ea8e9bf921ea9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST(              d   PNG �PNG

   IHDR   (      ��}    sRGB ���   IDAT(�c�\��?� L� B`ԁ� !��ʪ�O    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/paddle.png-66532f7eb85b20ecb094d6fe70e06eb2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Sprites/paddle.png"
dest_files=[ "res://.import/paddle.png-66532f7eb85b20ecb094d6fe70e06eb2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Ball.gdc"
         [remap]

path="res://Scripts/Bottom.gdc"
       [remap]

path="res://Scripts/Lives.gdc"
        [remap]

path="res://Scripts/Paddle.gdc"
       [remap]

path="res://Scripts/Pause.gdc"
        [remap]

path="res://Scripts/Score.gdc"
        [remap]

path="res://Scripts/displayLives.gdc"
 [remap]

path="res://Scripts/globalVars.gdc"
   [remap]

path="res://Scripts/main.gdc"
         �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Breakout   application/run/main_scene$         res://Scenes/LevelOne.tscn     application/config/icon         res://icon.png     autoload/GlobalVars$         *res://Scripts/globalVars.gd   display/window/size/width      �     display/window/size/height      h     input/pause�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   P      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/shoot`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script      )   rendering/environment/default_environment          res://default_env.tres             