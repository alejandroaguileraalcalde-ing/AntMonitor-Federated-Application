
@
inputPlaceholder*
shape:?????????? *
dtype0
@
targetPlaceholder*
dtype0*
shape:?????????
I
random_uniform/shapeConst*
valueB"  ?  *
dtype0
?
random_uniform/minConst*
valueB
 *U??*
dtype0
?
random_uniform/maxConst*
valueB
 *U?=*
dtype0
r
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*
T0*
dtype0*
seed2 *

seed 
J
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
T0
T
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0
F
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0
^
Variable
VariableV2*
shared_name *
dtype0*
	container *
shape:
? ?
?
Variable/AssignAssignVariablerandom_uniform*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
K
random_uniform_1/shapeConst*
valueB"   ?  *
dtype0
A
random_uniform_1/minConst*
valueB
 *???*
dtype0
A
random_uniform_1/maxConst*
valueB
 *??=*
dtype0
v
random_uniform_1/RandomUniformRandomUniformrandom_uniform_1/shape*
T0*
dtype0*
seed2 *

seed 
P
random_uniform_1/subSubrandom_uniform_1/maxrandom_uniform_1/min*
T0
Z
random_uniform_1/mulMulrandom_uniform_1/RandomUniformrandom_uniform_1/sub*
T0
L
random_uniform_1Addrandom_uniform_1/mulrandom_uniform_1/min*
T0
_

Variable_1
VariableV2*
shared_name *
dtype0*
	container *
shape:	?
?
Variable_1/AssignAssign
Variable_1random_uniform_1*
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
K
random_uniform_2/shapeConst*
valueB"?     *
dtype0
A
random_uniform_2/minConst*
valueB
 *???*
dtype0
A
random_uniform_2/maxConst*
valueB
 *??=*
dtype0
v
random_uniform_2/RandomUniformRandomUniformrandom_uniform_2/shape*
T0*
dtype0*
seed2 *

seed 
P
random_uniform_2/subSubrandom_uniform_2/maxrandom_uniform_2/min*
T0
Z
random_uniform_2/mulMulrandom_uniform_2/RandomUniformrandom_uniform_2/sub*
T0
L
random_uniform_2Addrandom_uniform_2/mulrandom_uniform_2/min*
T0
_

Variable_2
VariableV2*
	container *
shape:	?*
shared_name *
dtype0
?
Variable_2/AssignAssign
Variable_2random_uniform_2*
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
K
random_uniform_3/shapeConst*
valueB"      *
dtype0
A
random_uniform_3/minConst*
valueB
 *׳ݿ*
dtype0
A
random_uniform_3/maxConst*
dtype0*
valueB
 *׳??
v
random_uniform_3/RandomUniformRandomUniformrandom_uniform_3/shape*
dtype0*
seed2 *

seed *
T0
P
random_uniform_3/subSubrandom_uniform_3/maxrandom_uniform_3/min*
T0
Z
random_uniform_3/mulMulrandom_uniform_3/RandomUniformrandom_uniform_3/sub*
T0
L
random_uniform_3Addrandom_uniform_3/mulrandom_uniform_3/min*
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
Variable_3random_uniform_3*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
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
0
hidden1AddMatMulVariable_1/read*
T0
[
MatMul_1MatMulhidden1Variable_2/read*
T0*
transpose_a( *
transpose_b( 
1
outputAddMatMul_1Variable_3/read*
T0
#
SubSubtargetoutput*
T0

SquareSquareSub*
T0
:
ConstConst*
valueB"       *
dtype0
A
MeanMeanSquareConst*
T0*

Tidx0*
	keep_dims( 
%
Sub_1Subtargetoutput*
T0
<
Const_1Const*
valueB"       *
dtype0
@
MaxMaxSub_1Const_1*

Tidx0*
	keep_dims( *
T0
2
mul/xConst*
valueB
 *???>*
dtype0

mulMulmul/xMax*
T0

addAddMeanmul*
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
<
#gradients/add_grad/tuple/group_depsNoOp^gradients/Fill
?
+gradients/add_grad/tuple/control_dependencyIdentitygradients/Fill$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
?
-gradients/add_grad/tuple/control_dependency_1Identitygradients/Fill$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
V
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0
?
gradients/Mean_grad/ReshapeReshape+gradients/add_grad/tuple/control_dependency!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
C
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
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
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*

Tidx0*
	keep_dims( 
I
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: 
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
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
Z
gradients/mul_grad/MulMul-gradients/add_grad/tuple/control_dependency_1Max*
T0
^
gradients/mul_grad/Mul_1Mul-gradients/add_grad/tuple/control_dependency_1mul/x*
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
A
gradients/Max_grad/ShapeShapeSub_1*
T0*
out_type0
A
gradients/Max_grad/SizeConst*
value	B :*
dtype0
H
gradients/Max_grad/addAddConst_1gradients/Max_grad/Size*
T0
\
gradients/Max_grad/modFloorModgradients/Max_grad/addgradients/Max_grad/Size*
T0
H
gradients/Max_grad/Shape_1Const*
valueB:*
dtype0
H
gradients/Max_grad/range/startConst*
value	B : *
dtype0
H
gradients/Max_grad/range/deltaConst*
value	B :*
dtype0
?
gradients/Max_grad/rangeRangegradients/Max_grad/range/startgradients/Max_grad/Sizegradients/Max_grad/range/delta*

Tidx0
G
gradients/Max_grad/Fill/valueConst*
value	B :*
dtype0
u
gradients/Max_grad/FillFillgradients/Max_grad/Shape_1gradients/Max_grad/Fill/value*
T0*

index_type0
?
 gradients/Max_grad/DynamicStitchDynamicStitchgradients/Max_grad/rangegradients/Max_grad/modgradients/Max_grad/Shapegradients/Max_grad/Fill*
T0*
N
c
gradients/Max_grad/ReshapeReshapeMax gradients/Max_grad/DynamicStitch*
T0*
Tshape0
?
gradients/Max_grad/Reshape_1Reshape-gradients/mul_grad/tuple/control_dependency_1 gradients/Max_grad/DynamicStitch*
T0*
Tshape0
M
gradients/Max_grad/EqualEqualgradients/Max_grad/ReshapeSub_1*
T0
a
gradients/Max_grad/CastCastgradients/Max_grad/Equal*

SrcT0
*
Truncate( *

DstT0
e
gradients/Max_grad/SumSumgradients/Max_grad/CastConst_1*

Tidx0*
	keep_dims( *
T0
x
gradients/Max_grad/Reshape_2Reshapegradients/Max_grad/Sum gradients/Max_grad/DynamicStitch*
T0*
Tshape0
e
gradients/Max_grad/truedivRealDivgradients/Max_grad/Castgradients/Max_grad/Reshape_2*
T0
`
gradients/Max_grad/mulMulgradients/Max_grad/truedivgradients/Max_grad/Reshape_1*
T0
B
gradients/Sub_grad/ShapeShapetarget*
T0*
out_type0
D
gradients/Sub_grad/Shape_1Shapeoutput*
T0*
out_type0
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
gradients/Sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/Sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
F
gradients/Sub_1_grad/Shape_1Shapeoutput*
T0*
out_type0
?
*gradients/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_1_grad/Shapegradients/Sub_1_grad/Shape_1*
T0
?
gradients/Sub_1_grad/SumSumgradients/Max_grad/mul*gradients/Sub_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Sub_1_grad/ReshapeReshapegradients/Sub_1_grad/Sumgradients/Sub_1_grad/Shape*
Tshape0*
T0
?
gradients/Sub_1_grad/Sum_1Sumgradients/Max_grad/mul,gradients/Sub_1_grad/BroadcastGradientArgs:1*

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
-gradients/Sub_1_grad/tuple/control_dependencyIdentitygradients/Sub_1_grad/Reshape&^gradients/Sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Sub_1_grad/Reshape*
T0
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
G
gradients/output_grad/ShapeShapeMatMul_1*
T0*
out_type0
R
gradients/output_grad/Shape_1Const*
valueB"      *
dtype0
?
+gradients/output_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/output_grad/Shapegradients/output_grad/Shape_1*
T0
?
gradients/output_grad/SumSumgradients/AddN+gradients/output_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/output_grad/ReshapeReshapegradients/output_grad/Sumgradients/output_grad/Shape*
T0*
Tshape0
?
gradients/output_grad/Sum_1Sumgradients/AddN-gradients/output_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/output_grad/Reshape_1Reshapegradients/output_grad/Sum_1gradients/output_grad/Shape_1*
T0*
Tshape0
p
&gradients/output_grad/tuple/group_depsNoOp^gradients/output_grad/Reshape ^gradients/output_grad/Reshape_1
?
.gradients/output_grad/tuple/control_dependencyIdentitygradients/output_grad/Reshape'^gradients/output_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/output_grad/Reshape
?
0gradients/output_grad/tuple/control_dependency_1Identitygradients/output_grad/Reshape_1'^gradients/output_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/output_grad/Reshape_1
?
gradients/MatMul_1_grad/MatMulMatMul.gradients/output_grad/tuple/control_dependencyVariable_2/read*
transpose_b(*
T0*
transpose_a( 
?
 gradients/MatMul_1_grad/MatMul_1MatMulhidden1.gradients/output_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
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
F
gradients/hidden1_grad/ShapeShapeMatMul*
T0*
out_type0
S
gradients/hidden1_grad/Shape_1Const*
valueB"   ?  *
dtype0
?
,gradients/hidden1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/hidden1_grad/Shapegradients/hidden1_grad/Shape_1*
T0
?
gradients/hidden1_grad/SumSum0gradients/MatMul_1_grad/tuple/control_dependency,gradients/hidden1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/hidden1_grad/ReshapeReshapegradients/hidden1_grad/Sumgradients/hidden1_grad/Shape*
T0*
Tshape0
?
gradients/hidden1_grad/Sum_1Sum0gradients/MatMul_1_grad/tuple/control_dependency.gradients/hidden1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
 gradients/hidden1_grad/Reshape_1Reshapegradients/hidden1_grad/Sum_1gradients/hidden1_grad/Shape_1*
Tshape0*
T0
s
'gradients/hidden1_grad/tuple/group_depsNoOp^gradients/hidden1_grad/Reshape!^gradients/hidden1_grad/Reshape_1
?
/gradients/hidden1_grad/tuple/control_dependencyIdentitygradients/hidden1_grad/Reshape(^gradients/hidden1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/hidden1_grad/Reshape
?
1gradients/hidden1_grad/tuple/control_dependency_1Identity gradients/hidden1_grad/Reshape_1(^gradients/hidden1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/hidden1_grad/Reshape_1
?
gradients/MatMul_grad/MatMulMatMul/gradients/hidden1_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
T0
?
gradients/MatMul_grad/MatMul_1MatMulinput/gradients/hidden1_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
?
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
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
VariableV2*
shape: *
shared_name *
_class
loc:@Variable*
dtype0*
	container 
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
VariableV2*
	container *
shape: *
shared_name *
_class
loc:@Variable*
dtype0
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable
?
4Variable/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"  ?  *
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
VariableV2*
	container *
shape:
? ?*
shared_name *
_class
loc:@Variable*
dtype0
?
Variable/optimizer/AssignAssignVariable/optimizer$Variable/optimizer/Initializer/zeros*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
]
Variable/optimizer/readIdentityVariable/optimizer*
T0*
_class
loc:@Variable
?
6Variable/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"  ?  *
_class
loc:@Variable*
dtype0
v
,Variable/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable*
dtype0
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
? ?*
shared_name *
_class
loc:@Variable*
dtype0*
	container 
?
Variable/optimizer_1/AssignAssignVariable/optimizer_1&Variable/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
a
Variable/optimizer_1/readIdentityVariable/optimizer_1*
T0*
_class
loc:@Variable
{
&Variable_1/optimizer/Initializer/zerosConst*
valueB	?*    *
_class
loc:@Variable_1*
dtype0
?
Variable_1/optimizer
VariableV2*
_class
loc:@Variable_1*
dtype0*
	container *
shape:	?*
shared_name 
?
Variable_1/optimizer/AssignAssignVariable_1/optimizer&Variable_1/optimizer/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
c
Variable_1/optimizer/readIdentityVariable_1/optimizer*
T0*
_class
loc:@Variable_1
}
(Variable_1/optimizer_1/Initializer/zerosConst*
dtype0*
valueB	?*    *
_class
loc:@Variable_1
?
Variable_1/optimizer_1
VariableV2*
shape:	?*
shared_name *
_class
loc:@Variable_1*
dtype0*
	container 
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
{
&Variable_2/optimizer/Initializer/zerosConst*
valueB	?*    *
_class
loc:@Variable_2*
dtype0
?
Variable_2/optimizer
VariableV2*
dtype0*
	container *
shape:	?*
shared_name *
_class
loc:@Variable_2
?
Variable_2/optimizer/AssignAssignVariable_2/optimizer&Variable_2/optimizer/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2
c
Variable_2/optimizer/readIdentityVariable_2/optimizer*
T0*
_class
loc:@Variable_2
}
(Variable_2/optimizer_1/Initializer/zerosConst*
valueB	?*    *
_class
loc:@Variable_2*
dtype0
?
Variable_2/optimizer_1
VariableV2*
_class
loc:@Variable_2*
dtype0*
	container *
shape:	?*
shared_name 
?
Variable_2/optimizer_1/AssignAssignVariable_2/optimizer_1(Variable_2/optimizer_1/Initializer/zeros*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0
g
Variable_2/optimizer_1/readIdentityVariable_2/optimizer_1*
T0*
_class
loc:@Variable_2
z
&Variable_3/optimizer/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_3*
dtype0
?
Variable_3/optimizer
VariableV2*
	container *
shape
:*
shared_name *
_class
loc:@Variable_3*
dtype0
?
Variable_3/optimizer/AssignAssignVariable_3/optimizer&Variable_3/optimizer/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
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
Variable_3/optimizer_1/AssignAssignVariable_3/optimizer_1(Variable_3/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
g
Variable_3/optimizer_1/readIdentityVariable_3/optimizer_1*
_class
loc:@Variable_3*
T0
C
train_op/learning_rateConst*
valueB
 *o?:*
dtype0
;
train_op/beta1Const*
valueB
 *fff?*
dtype0
;
train_op/beta2Const*
valueB
 *w??*
dtype0
=
train_op/epsilonConst*
valueB
 *w?+2*
dtype0
?
"train_op/update_Variable/ApplyAdam	ApplyAdamVariableVariable/optimizerVariable/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( 
?
$train_op/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/optimizerVariable_1/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon1gradients/hidden1_grad/tuple/control_dependency_1*
_class
loc:@Variable_1*
use_nesterov( *
use_locking( *
T0
?
$train_op/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/optimizerVariable_2/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( 
?
$train_op/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon0gradients/output_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable_3
?
train_op/mulMulbeta1_power/readtrain_op/beta1#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam*
_class
loc:@Variable*
T0
?
train_op/AssignAssignbeta1_powertrain_op/mul*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
?
train_op/mul_1Mulbeta2_power/readtrain_op/beta2#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam*
T0*
_class
loc:@Variable
?
train_op/Assign_1Assignbeta2_powertrain_op/mul_1*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
?
train_opNoOp^train_op/Assign^train_op/Assign_1#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam
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
dtype0*
shape: 
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
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power*
dtype0
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
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_1AssignVariable/optimizersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_2AssignVariable/optimizer_1save/RestoreV2:2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
?
save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save/Assign_4AssignVariable_1/optimizersave/RestoreV2:4*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
?
save/Assign_5AssignVariable_1/optimizer_1save/RestoreV2:5*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
T0
?
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save/Assign_7AssignVariable_2/optimizersave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
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
save/Assign_10AssignVariable_3/optimizersave/RestoreV2:10*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0
?
save/Assign_11AssignVariable_3/optimizer_1save/RestoreV2:11*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0
?
save/Assign_12Assignbeta1_powersave/RestoreV2:12*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0
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
shape: *
dtype0
`
save_1/ConstPlaceholderWithDefaultsave_1/filename"/device:CPU:0*
dtype0*
shape: 
?
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power
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
save_1/AssignAssignVariablesave_1/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
?
save_1/Assign_1AssignVariable/optimizersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/Assign_2AssignVariable/optimizer_1save_1/RestoreV2:2*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
?
save_1/Assign_3Assign
Variable_1save_1/RestoreV2:3*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
?
save_1/Assign_4AssignVariable_1/optimizersave_1/RestoreV2:4*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
T0
?
save_1/Assign_5AssignVariable_1/optimizer_1save_1/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
?
save_1/Assign_6Assign
Variable_2save_1/RestoreV2:6*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0
?
save_1/Assign_7AssignVariable_2/optimizersave_1/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_1/Assign_8AssignVariable_2/optimizer_1save_1/RestoreV2:8*
T0*
_class
loc:@Variable_2*
validate_shape(*
use_locking(
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
save_1/Assign_11AssignVariable_3/optimizer_1save_1/RestoreV2:11*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_3
?
save_1/Assign_12Assignbeta1_powersave_1/RestoreV2:12*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
?
save_1/Assign_13Assignbeta2_powersave_1/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9"/device:CPU:0
R
save_2/filename/inputConst"/device:CPU:0*
valueB Bmodel*
dtype0
i
save_2/filenamePlaceholderWithDefaultsave_2/filename/input"/device:CPU:0*
dtype0*
shape: 
`
save_2/ConstPlaceholderWithDefaultsave_2/filename"/device:CPU:0*
dtype0*
shape: 
}
save_2/StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_1136210c12284022a3bd115a5ce4f345/part*
dtype0
r
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1"/device:CPU:0*
	separator *
N
J
save_2/num_shardsConst"/device:CPU:0*
value	B :*
dtype0
U
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0
|
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0
?
save_2/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power
t
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_powerbeta2_power"/device:CPU:0*
dtypes
2
?
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_2/ShardedFilename
?
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*

axis *
N*
T0
?
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(
y
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency"/device:CPU:0*
T0
?
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power*
dtype0
w
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
?
save_2/AssignAssignVariablesave_2/RestoreV2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
?
save_2/Assign_1AssignVariable/optimizersave_2/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_2/Assign_2AssignVariable/optimizer_1save_2/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_2/Assign_3Assign
Variable_1save_2/RestoreV2:3*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
?
save_2/Assign_4AssignVariable_1/optimizersave_2/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save_2/Assign_5AssignVariable_1/optimizer_1save_2/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save_2/Assign_6Assign
Variable_2save_2/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_2/Assign_7AssignVariable_2/optimizersave_2/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_2/Assign_8AssignVariable_2/optimizer_1save_2/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_2/Assign_9Assign
Variable_3save_2/RestoreV2:9*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0
?
save_2/Assign_10AssignVariable_3/optimizersave_2/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save_2/Assign_11AssignVariable_3/optimizer_1save_2/RestoreV2:11*
T0*
_class
loc:@Variable_3*
validate_shape(*
use_locking(
?
save_2/Assign_12Assignbeta1_powersave_2/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_2/Assign_13Assignbeta2_powersave_2/RestoreV2:13*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
?
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9"/device:CPU:0
@
save_2/restore_allNoOp^save_2/restore_shard"/device:CPU:0"&