
9
location_inputPlaceholder*
shape:*
dtype0
1
targetPlaceholder*
shape:*
dtype0
D
Plocation/initial_valueConst*
valueB
 *  A*
dtype0
U
	Plocation
VariableV2*
shape: *
shared_name *
dtype0*
	container 
?
Plocation/AssignAssign	PlocationPlocation/initial_value*
use_locking(*
T0*
_class
loc:@Plocation*
validate_shape(
L
Plocation/readIdentity	Plocation*
T0*
_class
loc:@Plocation
3
umbralConst*
valueB
 *   A*
dtype0
C
Variable/initial_valueConst*
valueB
 *    *
dtype0
T
Variable
VariableV2*
shape: *
shared_name *
dtype0*
	container 
?
Variable/AssignAssignVariableVariable/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
3
MulMullocation_inputPlocation/read*
T0
2
Add/yConst*
valueB
 *    *
dtype0

AddAddMulAdd/y*
T0
(
truedivRealDivAddumbral*
T0
2
mod/yConst*
valueB
 *  ??*
dtype0
(
modFloorModtruedivmod/y*
T0
4
Mul_1/yConst*
valueB
 *  ??*
dtype0
#
Mul_1MulmodMul_1/y*
T0
%
Add_1AddtruedivMul_1*
T0
-

div_no_nanDivNoNanAdd_1Add_1*
T0
'
outputIdentity
div_no_nan*
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
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
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
?
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
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
gradients/Mean_grad/range/deltaConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0
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
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*

index_type0*,
_class"
 loc:@gradients/Mean_grad/Shape
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

DstT0*

SrcT0*
Truncate( 
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
B
gradients/sub_grad/ShapeShapeoutput*
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
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
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
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
?
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
H
gradients/div_no_nan_grad/ShapeShapeAdd_1*
T0*
out_type0
J
!gradients/div_no_nan_grad/Shape_1ShapeAdd_1*
T0*
out_type0
?
/gradients/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_no_nan_grad/Shape!gradients/div_no_nan_grad/Shape_1*
T0
m
$gradients/div_no_nan_grad/div_no_nanDivNoNan+gradients/sub_grad/tuple/control_dependencyAdd_1*
T0
?
gradients/div_no_nan_grad/SumSum$gradients/div_no_nan_grad/div_no_nan/gradients/div_no_nan_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
!gradients/div_no_nan_grad/ReshapeReshapegradients/div_no_nan_grad/Sumgradients/div_no_nan_grad/Shape*
T0*
Tshape0
4
gradients/div_no_nan_grad/NegNegAdd_1*
T0
a
&gradients/div_no_nan_grad/div_no_nan_1DivNoNangradients/div_no_nan_grad/NegAdd_1*
T0
j
&gradients/div_no_nan_grad/div_no_nan_2DivNoNan&gradients/div_no_nan_grad/div_no_nan_1Add_1*
T0
?
gradients/div_no_nan_grad/mulMul+gradients/sub_grad/tuple/control_dependency&gradients/div_no_nan_grad/div_no_nan_2*
T0
?
gradients/div_no_nan_grad/Sum_1Sumgradients/div_no_nan_grad/mul1gradients/div_no_nan_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
#gradients/div_no_nan_grad/Reshape_1Reshapegradients/div_no_nan_grad/Sum_1!gradients/div_no_nan_grad/Shape_1*
Tshape0*
T0
|
*gradients/div_no_nan_grad/tuple/group_depsNoOp"^gradients/div_no_nan_grad/Reshape$^gradients/div_no_nan_grad/Reshape_1
?
2gradients/div_no_nan_grad/tuple/control_dependencyIdentity!gradients/div_no_nan_grad/Reshape+^gradients/div_no_nan_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/div_no_nan_grad/Reshape
?
4gradients/div_no_nan_grad/tuple/control_dependency_1Identity#gradients/div_no_nan_grad/Reshape_1+^gradients/div_no_nan_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/div_no_nan_grad/Reshape_1
?
gradients/AddNAddN2gradients/div_no_nan_grad/tuple/control_dependency4gradients/div_no_nan_grad/tuple/control_dependency_1*
T0*4
_class*
(&loc:@gradients/div_no_nan_grad/Reshape*
N
E
gradients/Add_1_grad/ShapeShapetruediv*
T0*
out_type0
E
gradients/Add_1_grad/Shape_1ShapeMul_1*
T0*
out_type0
?
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0
?
gradients/Add_1_grad/SumSumgradients/AddN*gradients/Add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0
?
gradients/Add_1_grad/Sum_1Sumgradients/AddN,gradients/Add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
?
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape
?
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1
A
gradients/Mul_1_grad/ShapeShapemod*
T0*
out_type0
G
gradients/Mul_1_grad/Shape_1ShapeMul_1/y*
T0*
out_type0
?
*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
b
gradients/Mul_1_grad/MulMul/gradients/Add_1_grad/tuple/control_dependency_1Mul_1/y*
T0
?
gradients/Mul_1_grad/SumSumgradients/Mul_1_grad/Mul*gradients/Mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_1_grad/ReshapeReshapegradients/Mul_1_grad/Sumgradients/Mul_1_grad/Shape*
T0*
Tshape0
`
gradients/Mul_1_grad/Mul_1Mulmod/gradients/Add_1_grad/tuple/control_dependency_1*
T0
?
gradients/Mul_1_grad/Sum_1Sumgradients/Mul_1_grad/Mul_1,gradients/Mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_1_grad/Reshape_1Reshapegradients/Mul_1_grad/Sum_1gradients/Mul_1_grad/Shape_1*
Tshape0*
T0
m
%gradients/Mul_1_grad/tuple/group_depsNoOp^gradients/Mul_1_grad/Reshape^gradients/Mul_1_grad/Reshape_1
?
-gradients/Mul_1_grad/tuple/control_dependencyIdentitygradients/Mul_1_grad/Reshape&^gradients/Mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_1_grad/Reshape
?
/gradients/Mul_1_grad/tuple/control_dependency_1Identitygradients/Mul_1_grad/Reshape_1&^gradients/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1
C
gradients/mod_grad/ShapeShapetruediv*
T0*
out_type0
C
gradients/mod_grad/Shape_1Const*
valueB *
dtype0
?
(gradients/mod_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mod_grad/Shapegradients/mod_grad/Shape_1*
T0
@
gradients/mod_grad/FloorDivFloorDivtruedivmod/y*
T0
?
gradients/mod_grad/SumSum-gradients/Mul_1_grad/tuple/control_dependency(gradients/mod_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/mod_grad/ReshapeReshapegradients/mod_grad/Sumgradients/mod_grad/Shape*
Tshape0*
T0
C
gradients/mod_grad/NegNeggradients/mod_grad/FloorDiv*
T0
m
gradients/mod_grad/mulMul-gradients/Mul_1_grad/tuple/control_dependencygradients/mod_grad/Neg*
T0
?
gradients/mod_grad/Sum_1Sumgradients/mod_grad/mul*gradients/mod_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/mod_grad/Reshape_1Reshapegradients/mod_grad/Sum_1gradients/mod_grad/Shape_1*
T0*
Tshape0
g
#gradients/mod_grad/tuple/group_depsNoOp^gradients/mod_grad/Reshape^gradients/mod_grad/Reshape_1
?
+gradients/mod_grad/tuple/control_dependencyIdentitygradients/mod_grad/Reshape$^gradients/mod_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mod_grad/Reshape
?
-gradients/mod_grad/tuple/control_dependency_1Identitygradients/mod_grad/Reshape_1$^gradients/mod_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mod_grad/Reshape_1
?
gradients/AddN_1AddN-gradients/Add_1_grad/tuple/control_dependency+gradients/mod_grad/tuple/control_dependency*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape*
N
C
gradients/truediv_grad/ShapeShapeAdd*
T0*
out_type0
G
gradients/truediv_grad/Shape_1Const*
valueB *
dtype0
?
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
L
gradients/truediv_grad/RealDivRealDivgradients/AddN_1umbral*
T0
?
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
/
gradients/truediv_grad/NegNegAdd*
T0
X
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Negumbral*
T0
^
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1umbral*
T0
^
gradients/truediv_grad/mulMulgradients/AddN_1 gradients/truediv_grad/RealDiv_2*
T0
?
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
?
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
?
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
?
gradients/Add_grad/ShapeShapeMul*
T0*
out_type0
C
gradients/Add_grad/Shape_1ShapeAdd/y*
T0*
out_type0
?
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0
?
gradients/Add_grad/SumSum/gradients/truediv_grad/tuple/control_dependency(gradients/Add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
Tshape0*
T0
?
gradients/Add_grad/Sum_1Sum/gradients/truediv_grad/tuple/control_dependency*gradients/Add_grad/BroadcastGradientArgs:1*

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
J
gradients/Mul_grad/ShapeShapelocation_input*
T0*
out_type0
L
gradients/Mul_grad/Shape_1ShapePlocation/read*
T0*
out_type0
?
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
c
gradients/Mul_grad/MulMul+gradients/Add_grad/tuple/control_dependencyPlocation/read*
T0
?
gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
e
gradients/Mul_grad/Mul_1Mullocation_input+gradients/Add_grad/tuple/control_dependency*
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
+train/update_Plocation/ApplyGradientDescentApplyGradientDescent	Plocationtrain/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Plocation
;
trainNoOp,^train/update_Plocation/ApplyGradientDescent
1
initNoOp^Plocation/Assign^Variable/Assign
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
dtype0*
shape: 
X
save/SaveV2/tensor_namesConst*(
valueBB	PlocationBVariable*
dtype0
K
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices	PlocationVariable*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
j
save/RestoreV2/tensor_namesConst"/device:CPU:0*(
valueBB	PlocationBVariable*
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
?
save/AssignAssign	Plocationsave/RestoreV2*
use_locking(*
T0*
_class
loc:@Plocation*
validate_shape(
?
save/Assign_1AssignVariablesave/RestoreV2:1*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
6
save/restore_allNoOp^save/Assign^save/Assign_1"?