
@
inputPlaceholder*
dtype0*
shape:?????????? 
@
targetPlaceholder*
dtype0*
shape:?????????
H
random_normal/shapeConst*
dtype0*
valueB"
  ?  
?
random_normal/meanConst*
valueB
 *    *
dtype0
A
random_normal/stddevConst*
dtype0*
valueB
 *  ??
~
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*

seed *
T0*
dtype0*
seed2 
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0
^
Variable
VariableV2*
dtype0*
	container *
shape:
? ?'*
shared_name 
?
Variable/AssignAssignVariablerandom_normal*
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
J
random_normal_1/shapeConst*
valueB"   ?  *
dtype0
A
random_normal_1/meanConst*
valueB
 *    *
dtype0
C
random_normal_1/stddevConst*
valueB
 *  ??*
dtype0
?
$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0
J
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0
_

Variable_1
VariableV2*
shape:	?'*
shared_name *
dtype0*
	container 
?
Variable_1/AssignAssign
Variable_1random_normal_1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1
J
random_normal_2/shapeConst*
dtype0*
valueB"?     
A
random_normal_2/meanConst*
valueB
 *    *
dtype0
C
random_normal_2/stddevConst*
valueB
 *  ??*
dtype0
?
$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
T0
J
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
T0
_

Variable_2
VariableV2*
dtype0*
	container *
shape:	?'*
shared_name 
?
Variable_2/AssignAssign
Variable_2random_normal_2*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
J
random_normal_3/shapeConst*
valueB"      *
dtype0
A
random_normal_3/meanConst*
valueB
 *    *
dtype0
C
random_normal_3/stddevConst*
valueB
 *  ??*
dtype0
?
$random_normal_3/RandomStandardNormalRandomStandardNormalrandom_normal_3/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_3/mulMul$random_normal_3/RandomStandardNormalrandom_normal_3/stddev*
T0
J
random_normal_3Addrandom_normal_3/mulrandom_normal_3/mean*
T0
^

Variable_3
VariableV2*
dtype0*
	container *
shape
:*
shared_name 
?
Variable_3/AssignAssign
Variable_3random_normal_3*
T0*
_class
loc:@Variable_3*
validate_shape(*
use_locking(
O
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3
U
MatMulMatMulinputVariable/read*
T0*
transpose_a( *
transpose_b( 
,
AddAddMatMulVariable_1/read*
T0
W
MatMul_1MatMulAddVariable_2/read*
transpose_a( *
transpose_b( *
T0
0
Add_1AddMatMul_1Variable_3/read*
T0
"
SubSubtargetAdd_1*
T0

SquareSquareSub*
T0
:
ConstConst*
valueB"       *
dtype0
A
MeanMeanSquareConst*

Tidx0*
	keep_dims( *
T0
$
Sub_1SubtargetAdd_1*
T0
<
Const_1Const*
dtype0*
valueB"       
A
lossMaxSub_1Const_1*

Tidx0*
	keep_dims( *
T0
2
mul/xConst*
dtype0*
valueB
 *???>
 
mulMulmul/xloss*
T0
 
add_2AddMeanmul*
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
>
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/Fill
?
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/add_2_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
?
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/Fill&^gradients/add_2_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
V
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0
?
gradients/Mean_grad/ReshapeReshape-gradients/add_2_grad/tuple/control_dependency!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
C
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0
E
gradients/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
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
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
]
gradients/mul_grad/MulMul/gradients/add_2_grad/tuple/control_dependency_1loss*
T0
`
gradients/mul_grad/Mul_1Mul/gradients/add_2_grad/tuple/control_dependency_1mul/x*
T0
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
?
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*
T0*)
_class
loc:@gradients/mul_grad/Mul
?
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
f
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0
K
gradients/Square_grad/MulMulSubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0
B
gradients/loss_grad/ShapeShapeSub_1*
T0*
out_type0
B
gradients/loss_grad/SizeConst*
value	B :*
dtype0
J
gradients/loss_grad/addAddConst_1gradients/loss_grad/Size*
T0
_
gradients/loss_grad/modFloorModgradients/loss_grad/addgradients/loss_grad/Size*
T0
I
gradients/loss_grad/Shape_1Const*
valueB:*
dtype0
I
gradients/loss_grad/range/startConst*
value	B : *
dtype0
I
gradients/loss_grad/range/deltaConst*
value	B :*
dtype0
?
gradients/loss_grad/rangeRangegradients/loss_grad/range/startgradients/loss_grad/Sizegradients/loss_grad/range/delta*

Tidx0
H
gradients/loss_grad/Fill/valueConst*
value	B :*
dtype0
x
gradients/loss_grad/FillFillgradients/loss_grad/Shape_1gradients/loss_grad/Fill/value*
T0*

index_type0
?
!gradients/loss_grad/DynamicStitchDynamicStitchgradients/loss_grad/rangegradients/loss_grad/modgradients/loss_grad/Shapegradients/loss_grad/Fill*
T0*
N
f
gradients/loss_grad/ReshapeReshapeloss!gradients/loss_grad/DynamicStitch*
T0*
Tshape0
?
gradients/loss_grad/Reshape_1Reshape-gradients/mul_grad/tuple/control_dependency_1!gradients/loss_grad/DynamicStitch*
T0*
Tshape0
O
gradients/loss_grad/EqualEqualgradients/loss_grad/ReshapeSub_1*
T0
c
gradients/loss_grad/CastCastgradients/loss_grad/Equal*

SrcT0
*
Truncate( *

DstT0
g
gradients/loss_grad/SumSumgradients/loss_grad/CastConst_1*

Tidx0*
	keep_dims( *
T0
{
gradients/loss_grad/Reshape_2Reshapegradients/loss_grad/Sum!gradients/loss_grad/DynamicStitch*
Tshape0*
T0
h
gradients/loss_grad/truedivRealDivgradients/loss_grad/Castgradients/loss_grad/Reshape_2*
T0
c
gradients/loss_grad/mulMulgradients/loss_grad/truedivgradients/loss_grad/Reshape_1*
T0
B
gradients/Sub_grad/ShapeShapetarget*
T0*
out_type0
C
gradients/Sub_grad/Shape_1ShapeAdd_1*
out_type0*
T0
?
(gradients/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_grad/Shapegradients/Sub_grad/Shape_1*
T0
?
gradients/Sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/Sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Sub_grad/ReshapeReshapegradients/Sub_grad/Sumgradients/Sub_grad/Shape*
T0*
Tshape0
?
gradients/Sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/Sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
@
gradients/Sub_grad/NegNeggradients/Sub_grad/Sum_1*
T0
r
gradients/Sub_grad/Reshape_1Reshapegradients/Sub_grad/Neggradients/Sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/Sub_grad/tuple/group_depsNoOp^gradients/Sub_grad/Reshape^gradients/Sub_grad/Reshape_1
?
+gradients/Sub_grad/tuple/control_dependencyIdentitygradients/Sub_grad/Reshape$^gradients/Sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sub_grad/Reshape
?
-gradients/Sub_grad/tuple/control_dependency_1Identitygradients/Sub_grad/Reshape_1$^gradients/Sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Sub_grad/Reshape_1
D
gradients/Sub_1_grad/ShapeShapetarget*
T0*
out_type0
E
gradients/Sub_1_grad/Shape_1ShapeAdd_1*
T0*
out_type0
?
*gradients/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_1_grad/Shapegradients/Sub_1_grad/Shape_1*
T0
?
gradients/Sub_1_grad/SumSumgradients/loss_grad/mul*gradients/Sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Sub_1_grad/ReshapeReshapegradients/Sub_1_grad/Sumgradients/Sub_1_grad/Shape*
T0*
Tshape0
?
gradients/Sub_1_grad/Sum_1Sumgradients/loss_grad/mul,gradients/Sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
D
gradients/Sub_1_grad/NegNeggradients/Sub_1_grad/Sum_1*
T0
x
gradients/Sub_1_grad/Reshape_1Reshapegradients/Sub_1_grad/Neggradients/Sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Sub_1_grad/tuple/group_depsNoOp^gradients/Sub_1_grad/Reshape^gradients/Sub_1_grad/Reshape_1
?
-gradients/Sub_1_grad/tuple/control_dependencyIdentitygradients/Sub_1_grad/Reshape&^gradients/Sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Sub_1_grad/Reshape
?
/gradients/Sub_1_grad/tuple/control_dependency_1Identitygradients/Sub_1_grad/Reshape_1&^gradients/Sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Sub_1_grad/Reshape_1
?
gradients/AddNAddN-gradients/Sub_grad/tuple/control_dependency_1/gradients/Sub_1_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@gradients/Sub_grad/Reshape_1*
N
F
gradients/Add_1_grad/ShapeShapeMatMul_1*
T0*
out_type0
Q
gradients/Add_1_grad/Shape_1Const*
valueB"      *
dtype0
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
gradients/Add_1_grad/Sum_1Sumgradients/AddN,gradients/Add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
?
gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyVariable_2/read*
transpose_a( *
transpose_b(*
T0
?
 gradients/MatMul_1_grad/MatMul_1MatMulAdd-gradients/Add_1_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
?
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
?
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
B
gradients/Add_grad/ShapeShapeMatMul*
T0*
out_type0
O
gradients/Add_grad/Shape_1Const*
valueB"   ?  *
dtype0
?
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0
?
gradients/Add_grad/SumSum0gradients/MatMul_1_grad/tuple/control_dependency(gradients/Add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0
?
gradients/Add_grad/Sum_1Sum0gradients/MatMul_1_grad/tuple/control_dependency*gradients/Add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
?
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyVariable/read*
transpose_b(*
T0*
transpose_a( 
?
gradients/MatMul_grad/MatMul_1MatMulinput+gradients/Add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
?
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0
?
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
c
beta1_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *fff?*
dtype0
t
beta1_power
VariableV2*
	container *
shape: *
shared_name *
_class
loc:@Variable*
dtype0
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable
c
beta2_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *w??*
dtype0
t
beta2_power
VariableV2*
shared_name *
_class
loc:@Variable*
dtype0*
	container *
shape: 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable
?
4Variable/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"
  ?  *
_class
loc:@Variable*
dtype0
t
*Variable/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable*
dtype0
?
$Variable/optimizer/Initializer/zerosFill4Variable/optimizer/Initializer/zeros/shape_as_tensor*Variable/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable
?
Variable/optimizer
VariableV2*
shape:
? ?'*
shared_name *
_class
loc:@Variable*
dtype0*
	container 
?
Variable/optimizer/AssignAssignVariable/optimizer$Variable/optimizer/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
]
Variable/optimizer/readIdentityVariable/optimizer*
T0*
_class
loc:@Variable
?
6Variable/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"
  ?  *
_class
loc:@Variable*
dtype0
v
,Variable/optimizer_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@Variable
?
&Variable/optimizer_1/Initializer/zerosFill6Variable/optimizer_1/Initializer/zeros/shape_as_tensor,Variable/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable
?
Variable/optimizer_1
VariableV2*
shape:
? ?'*
shared_name *
_class
loc:@Variable*
dtype0*
	container 
?
Variable/optimizer_1/AssignAssignVariable/optimizer_1&Variable/optimizer_1/Initializer/zeros*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0
a
Variable/optimizer_1/readIdentityVariable/optimizer_1*
T0*
_class
loc:@Variable
?
6Variable_1/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"   ?  *
_class
loc:@Variable_1*
dtype0
x
,Variable_1/optimizer/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@Variable_1
?
&Variable_1/optimizer/Initializer/zerosFill6Variable_1/optimizer/Initializer/zeros/shape_as_tensor,Variable_1/optimizer/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_1
?
Variable_1/optimizer
VariableV2*
shape:	?'*
shared_name *
_class
loc:@Variable_1*
dtype0*
	container 
?
Variable_1/optimizer/AssignAssignVariable_1/optimizer&Variable_1/optimizer/Initializer/zeros*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
T0
c
Variable_1/optimizer/readIdentityVariable_1/optimizer*
T0*
_class
loc:@Variable_1
?
8Variable_1/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"   ?  *
_class
loc:@Variable_1*
dtype0
z
.Variable_1/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_1*
dtype0
?
(Variable_1/optimizer_1/Initializer/zerosFill8Variable_1/optimizer_1/Initializer/zeros/shape_as_tensor.Variable_1/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_1
?
Variable_1/optimizer_1
VariableV2*
_class
loc:@Variable_1*
dtype0*
	container *
shape:	?'*
shared_name 
?
Variable_1/optimizer_1/AssignAssignVariable_1/optimizer_1(Variable_1/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
g
Variable_1/optimizer_1/readIdentityVariable_1/optimizer_1*
T0*
_class
loc:@Variable_1
?
6Variable_2/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"?     *
_class
loc:@Variable_2*
dtype0
x
,Variable_2/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_2*
dtype0
?
&Variable_2/optimizer/Initializer/zerosFill6Variable_2/optimizer/Initializer/zeros/shape_as_tensor,Variable_2/optimizer/Initializer/zeros/Const*

index_type0*
_class
loc:@Variable_2*
T0
?
Variable_2/optimizer
VariableV2*
shape:	?'*
shared_name *
_class
loc:@Variable_2*
dtype0*
	container 
?
Variable_2/optimizer/AssignAssignVariable_2/optimizer&Variable_2/optimizer/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
c
Variable_2/optimizer/readIdentityVariable_2/optimizer*
T0*
_class
loc:@Variable_2
?
8Variable_2/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"?     *
_class
loc:@Variable_2*
dtype0
z
.Variable_2/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_2*
dtype0
?
(Variable_2/optimizer_1/Initializer/zerosFill8Variable_2/optimizer_1/Initializer/zeros/shape_as_tensor.Variable_2/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_2
?
Variable_2/optimizer_1
VariableV2*
shape:	?'*
shared_name *
_class
loc:@Variable_2*
dtype0*
	container 
?
Variable_2/optimizer_1/AssignAssignVariable_2/optimizer_1(Variable_2/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
g
Variable_2/optimizer_1/readIdentityVariable_2/optimizer_1*
_class
loc:@Variable_2*
T0
z
&Variable_3/optimizer/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_3*
dtype0
?
Variable_3/optimizer
VariableV2*
shape
:*
shared_name *
_class
loc:@Variable_3*
dtype0*
	container 
?
Variable_3/optimizer/AssignAssignVariable_3/optimizer&Variable_3/optimizer/Initializer/zeros*
T0*
_class
loc:@Variable_3*
validate_shape(*
use_locking(
c
Variable_3/optimizer/readIdentityVariable_3/optimizer*
T0*
_class
loc:@Variable_3
|
(Variable_3/optimizer_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_3*
dtype0
?
Variable_3/optimizer_1
VariableV2*
shared_name *
_class
loc:@Variable_3*
dtype0*
	container *
shape
:
?
Variable_3/optimizer_1/AssignAssignVariable_3/optimizer_1(Variable_3/optimizer_1/Initializer/zeros*
T0*
_class
loc:@Variable_3*
validate_shape(*
use_locking(
g
Variable_3/optimizer_1/readIdentityVariable_3/optimizer_1*
T0*
_class
loc:@Variable_3
@
train/learning_rateConst*
valueB
 *o?:*
dtype0
8
train/beta1Const*
dtype0*
valueB
 *fff?
8
train/beta2Const*
valueB
 *w??*
dtype0
:
train/epsilonConst*
valueB
 *w?+2*
dtype0
?
train/update_Variable/ApplyAdam	ApplyAdamVariableVariable/optimizerVariable/optimizer_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( 
?
!train/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/optimizerVariable_1/optimizer_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon-gradients/Add_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_nesterov( *
use_locking( 
?
!train/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/optimizerVariable_2/optimizer_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_2*
use_nesterov( *
use_locking( 
?
!train/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon/gradients/Add_1_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable_3
?
	train/mulMulbeta1_power/readtrain/beta1 ^train/update_Variable/ApplyAdam"^train/update_Variable_1/ApplyAdam"^train/update_Variable_2/ApplyAdam"^train/update_Variable_3/ApplyAdam*
T0*
_class
loc:@Variable
}
train/AssignAssignbeta1_power	train/mul*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
?
train/mul_1Mulbeta2_power/readtrain/beta2 ^train/update_Variable/ApplyAdam"^train/update_Variable_1/ApplyAdam"^train/update_Variable_2/ApplyAdam"^train/update_Variable_3/ApplyAdam*
T0*
_class
loc:@Variable
?
train/Assign_1Assignbeta2_powertrain/mul_1*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
?
trainNoOp^train/Assign^train/Assign_1 ^train/update_Variable/ApplyAdam"^train/update_Variable_1/ApplyAdam"^train/update_Variable_2/ApplyAdam"^train/update_Variable_3/ApplyAdam
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
?
save/SaveV2/tensor_namesConst*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power*
dtype0
c
save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_powerbeta2_power*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power
u
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
~
save/AssignAssignVariablesave/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
?
save/Assign_1AssignVariable/optimizersave/RestoreV2:1*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0
?
save/Assign_2AssignVariable/optimizer_1save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save/Assign_4AssignVariable_1/optimizersave/RestoreV2:4*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
?
save/Assign_5AssignVariable_1/optimizer_1save/RestoreV2:5*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
?
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save/Assign_7AssignVariable_2/optimizersave/RestoreV2:7*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0
?
save/Assign_8AssignVariable_2/optimizer_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save/Assign_9Assign
Variable_3save/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save/Assign_10AssignVariable_3/optimizersave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save/Assign_11AssignVariable_3/optimizer_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save/Assign_12Assignbeta1_powersave/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_13Assignbeta2_powersave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
?
initNoOp^Variable/Assign^Variable/optimizer/Assign^Variable/optimizer_1/Assign^Variable_1/Assign^Variable_1/optimizer/Assign^Variable_1/optimizer_1/Assign^Variable_2/Assign^Variable_2/optimizer/Assign^Variable_2/optimizer_1/Assign^Variable_3/Assign^Variable_3/optimizer/Assign^Variable_3/optimizer_1/Assign^beta1_power/Assign^beta2_power/Assign
R
save_1/filename/inputConst"/device:CPU:0*
valueB Bmodel*
dtype0
i
save_1/filenamePlaceholderWithDefaultsave_1/filename/input"/device:CPU:0*
dtype0*
shape: 
`
save_1/ConstPlaceholderWithDefaultsave_1/filename"/device:CPU:0*
dtype0*
shape: 
?
save_1/SaveV2/tensor_namesConst"/device:CPU:0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power*
dtype0
t
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_powerbeta2_power"/device:CPU:0*
dtypes
2
|
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2"/device:CPU:0*
T0*
_class
loc:@save_1/Const
?
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power
w
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
?
save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/Assign_1AssignVariable/optimizersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/Assign_2AssignVariable/optimizer_1save_1/RestoreV2:2*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0
?
save_1/Assign_3Assign
Variable_1save_1/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save_1/Assign_4AssignVariable_1/optimizersave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save_1/Assign_5AssignVariable_1/optimizer_1save_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save_1/Assign_6Assign
Variable_2save_1/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_1/Assign_7AssignVariable_2/optimizersave_1/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_1/Assign_8AssignVariable_2/optimizer_1save_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_1/Assign_9Assign
Variable_3save_1/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save_1/Assign_10AssignVariable_3/optimizersave_1/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save_1/Assign_11AssignVariable_3/optimizer_1save_1/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save_1/Assign_12Assignbeta1_powersave_1/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/Assign_13Assignbeta2_powersave_1/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9"/device:CPU:0"&