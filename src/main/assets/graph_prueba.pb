
0
inputPlaceholder*
dtype0*
shape:
1
targetPlaceholder*
dtype0*
shape:
<
W/initial_valueConst*
dtype0*
valueB
 *   @
M
W
VariableV2*
shape: *
shared_name *
dtype0*
	container *
shape: 
n
W/AssignAssignWW/initial_value*
use_locking(*
T0*
_class

loc:@W*
validate_shape(
4
W/readIdentityW*
T0*
_class

loc:@W
<
b/initial_valueConst*
valueB
 *  @@*
dtype0
M
b
VariableV2*
shape: *
shared_name *
dtype0*
	container 
n
b/AssignAssignbb/initial_value*
use_locking(*
T0*
_class

loc:@b*
validate_shape(
4
b/readIdentityb*
T0*
_class

loc:@b
"
mulMulinputW/read*
T0
"
addAddV2mulb/read*
T0
 
outputIdentityadd*
T0
#
subSuboutputtarget*
T0

SquareSquaresub*
T0

RankRankSquare*
T0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
:
rangeRangerange/startRankrange/delta*

Tidx0
A
MeanMeanSquarerange*
T0*

Tidx0*
	keep_dims( 
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  €?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
C
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0
‚
gradients/Mean_grad/SizeSizegradients/Mean_grad/Shape*
T0*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape
x
gradients/Mean_grad/addAddV2rangegradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
„
gradients/Mean_grad/Shape_1Shapegradients/Mean_grad/mod*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
w
gradients/Mean_grad/range/startConst*
value	B : *,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0
w
gradients/Mean_grad/range/deltaConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0
¸
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0
v
gradients/Mean_grad/Fill/valueConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0
¦
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*

index_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
Û
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
N
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
{
gradients/Mean_grad/BroadcastToBroadcastTogradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tidx0*
T0
E
gradients/Mean_grad/Shape_2ShapeSquare*
T0*
out_type0
D
gradients/Mean_grad/Shape_3Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
‚
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
f
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *

DstT0*

SrcT0
j
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/BroadcastTogradients/Mean_grad/Cast*
T0
f
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0
K
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0
B
gradients/sub_grad/ShapeShapeoutput*
T0*
out_type0
D
gradients/sub_grad/Shape_1Shapetarget*
T0*
out_type0
€
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
Š
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
C
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0
‰
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
?
gradients/add_grad/ShapeShapemul*
T0*
out_type0
D
gradients/add_grad/Shape_1Shapeb/read*
out_type0*
T0
€
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0
š
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0
ž
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
±
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
·
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
A
gradients/mul_grad/ShapeShapeinput*
T0*
out_type0
D
gradients/mul_grad/Shape_1ShapeW/read*
T0*
out_type0
€
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
[
gradients/mul_grad/MulMul+gradients/add_grad/tuple/control_dependencyW/read*
T0
…
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0
\
gradients/mul_grad/Mul_1Mulinput+gradients/add_grad/tuple/control_dependency*
T0
‹
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
±
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
·
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
@
train/learning_rateConst*
valueB
 *
×#<*
dtype0
´
#train/update_W/ApplyGradientDescentApplyGradientDescentWtrain/learning_rate-gradients/mul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W
´
#train/update_b/ApplyGradientDescentApplyGradientDescentbtrain/learning_rate-gradients/add_grad/tuple/control_dependency_1*
_class

loc:@b*
use_locking( *
T0
Y
trainNoOp$^train/update_W/ApplyGradientDescent$^train/update_b/ApplyGradientDescent
"
initNoOp	^W/Assign	^b/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
I
save/SaveV2/tensor_namesConst*
dtype0*
valueBBWBb
K
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0
q
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesWb*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
[
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBBWBb*
dtype0
]
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0
†
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
p
save/AssignAssignWsave/RestoreV2*
use_locking(*
T0*
_class

loc:@W*
validate_shape(
t
save/Assign_1Assignbsave/RestoreV2:1*
use_locking(*
T0*
_class

loc:@b*
validate_shape(
6
save/restore_allNoOp^save/Assign^save/Assign_1"¸