
0
inputPlaceholder*
shape:*
dtype0
1
targetPlaceholder*
shape:*
dtype0
<
W/initial_valueConst*
valueB
 *  ?@*
dtype0
M
W
VariableV2*
dtype0*
	container *
shape: *
shared_name 
n
W/AssignAssignWW/initial_value*
validate_shape(*
use_locking(*
T0*
_class

loc:@W
4
W/readIdentityW*
_class

loc:@W*
T0
<
b/initial_valueConst*
valueB
 *  @@*
dtype0
M
b
VariableV2*
shared_name *
dtype0*
	container *
shape: 
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
MulMulW/readinput*
T0
 
AddAddMulb/read*
T0
 
subSubAddtarget*
T0

SquareSquaresub*
T0

RankRankSquare*
T0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
dtype0*
value	B :
:
rangeRangerange/startRankrange/delta*

Tidx0
A
MeanMeanSquarerange*

Tidx0*
	keep_dims( *
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
C
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0
?
gradients/Mean_grad/SizeSizegradients/Mean_grad/Shape*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
x
gradients/Mean_grad/addAddV2rangegradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/Shape_1Shapegradients/Mean_grad/mod*
T0*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape
w
gradients/Mean_grad/range/startConst*
value	B : *,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0
w
gradients/Mean_grad/range/deltaConst*
dtype0*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0
v
gradients/Mean_grad/Fill/valueConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0
?
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*

index_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
?
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
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
f
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *

DstT0
j
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/BroadcastTogradients/Mean_grad/Cast*
T0
f
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0
K
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0
?
gradients/sub_grad/ShapeShapeAdd*
T0*
out_type0
D
gradients/sub_grad/Shape_1Shapetarget*
T0*
out_type0
?
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
?
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
C
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0
?
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
?
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0
?
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
?
gradients/Add_grad/ShapeShapeMul*
T0*
out_type0
D
gradients/Add_grad/Shape_1Shapeb/read*
T0*
out_type0
?
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0
?
gradients/Add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/Add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0
?
gradients/Add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/Add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
?
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Add_grad/Reshape
?
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1
B
gradients/Mul_grad/ShapeShapeW/read*
T0*
out_type0
C
gradients/Mul_grad/Shape_1Shapeinput*
T0*
out_type0
?
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
Z
gradients/Mul_grad/MulMul+gradients/Add_grad/tuple/control_dependencyinput*
T0
?
gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
]
gradients/Mul_grad/Mul_1MulW/read+gradients/Add_grad/tuple/control_dependency*
T0
?
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
?
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
?
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
@
train/learning_rateConst*
valueB
 *
?#<*
dtype0
?
#train/update_W/ApplyGradientDescentApplyGradientDescentWtrain/learning_rate+gradients/Mul_grad/tuple/control_dependency*
T0*
_class

loc:@W*
use_locking( 
?
#train/update_b/ApplyGradientDescentApplyGradientDescentbtrain/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@b
Y
trainNoOp$^train/update_W/ApplyGradientDescent$^train/update_b/ApplyGradientDescent
"
initNoOp	^W/Assign	^b/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
I
save/SaveV2/tensor_namesConst*
dtype0*
valueBBWBb
K
save/SaveV2/shape_and_slicesConst*
valueBB B *
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
valueBB B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
p
save/AssignAssignWsave/RestoreV2*
_class

loc:@W*
validate_shape(*
use_locking(*
T0
t
save/Assign_1Assignbsave/RestoreV2:1*
validate_shape(*
use_locking(*
T0*
_class

loc:@b
6
save/restore_allNoOp^save/Assign^save/Assign_1"?