
9
location_inputPlaceholder*
shape:*
dtype0
6
email_inputPlaceholder*
shape:*
dtype0
5

imei_inputPlaceholder*
dtype0*
shape:
7
device_inputPlaceholder*
shape:*
dtype0
1
targetPlaceholder*
dtype0*
shape:
D
Plocation/initial_valueConst*
valueB
 *  A*
dtype0
U
	Plocation
VariableV2*
shared_name *
dtype0*
	container *
shape: 
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
A
Pemail/initial_valueConst*
dtype0*
valueB
 *   A
R
Pemail
VariableV2*
shared_name *
dtype0*
	container *
shape: 
?
Pemail/AssignAssignPemailPemail/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@Pemail
C
Pemail/readIdentityPemail*
T0*
_class
loc:@Pemail
@
Pimei/initial_valueConst*
dtype0*
valueB
 *  @@
Q
Pimei
VariableV2*
shared_name *
dtype0*
	container *
shape: 
~
Pimei/AssignAssignPimeiPimei/initial_value*
T0*
_class

loc:@Pimei*
validate_shape(*
use_locking(
@

Pimei/readIdentityPimei*
T0*
_class

loc:@Pimei
B
Pdevice/initial_valueConst*
dtype0*
valueB
 *   @
S
Pdevice
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pdevice/AssignAssignPdevicePdevice/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@Pdevice
F
Pdevice/readIdentityPdevice*
T0*
_class
loc:@Pdevice
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
dtype0*
	container *
shape: *
shared_name 
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
E
Variable_1/initial_valueConst*
valueB
 *    *
dtype0
V

Variable_1
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1
E
Variable_2/initial_valueConst*
valueB
 *    *
dtype0
V

Variable_2
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Variable_2/AssignAssign
Variable_2Variable_2/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
E
Variable_3/initial_valueConst*
valueB
 *    *
dtype0
V

Variable_3
VariableV2*
shared_name *
dtype0*
	container *
shape: 
?
Variable_3/AssignAssign
Variable_3Variable_3/initial_value*
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
E
Variable_4/initial_valueConst*
valueB
 *    *
dtype0
V

Variable_4
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Variable_4/AssignAssign
Variable_4Variable_4/initial_value*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(
O
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4
E
Variable_5/initial_valueConst*
valueB
 *    *
dtype0
V

Variable_5
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Variable_5/AssignAssign
Variable_5Variable_5/initial_value*
T0*
_class
loc:@Variable_5*
validate_shape(*
use_locking(
O
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5
E
Variable_6/initial_valueConst*
valueB
 *    *
dtype0
V

Variable_6
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Variable_6/AssignAssign
Variable_6Variable_6/initial_value*
T0*
_class
loc:@Variable_6*
validate_shape(*
use_locking(
O
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6
E
Variable_7/initial_valueConst*
valueB
 *    *
dtype0
V

Variable_7
VariableV2*
shape: *
shared_name *
dtype0*
	container 
?
Variable_7/AssignAssign
Variable_7Variable_7/initial_value*
T0*
_class
loc:@Variable_7*
validate_shape(*
use_locking(
O
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7
3
MulMullocation_inputPlocation/read*
T0
2
Add/yConst*
dtype0*
valueB
 *    

AddAddMulAdd/y*
T0
/
Mul_1Mulemail_inputPemail/read*
T0
!
Add_1AddMul_1Add*
T0
-
Mul_2Mul
imei_input
Pimei/read*
T0
#
Add_2AddMul_2Add_1*
T0
1
Mul_3Muldevice_inputPdevice/read*
T0
#
Add_3AddMul_3Add_2*
T0
*
truedivRealDivAdd_3umbral*
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
Mul_4/yConst*
dtype0*
valueB
 *  ??
#
Mul_4MulmodMul_4/y*
T0
%
Add_4AddtruedivMul_4*
T0
-

div_no_nanDivNoNanAdd_4Add_4*
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
range/deltaConst*
dtype0*
value	B :
:
rangeRangerange/startRankrange/delta*

Tidx0
A
MeanMeanSquarerange*
T0*

Tidx0*
	keep_dims( 
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
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
out_type0
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
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
out_type0
w
gradients/Mean_grad/range/startConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B : *
dtype0
w
gradients/Mean_grad/range/deltaConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0
v
gradients/Mean_grad/Fill/valueConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*

index_type0
?
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
N
u
gradients/Mean_grad/Maximum/yConst*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :
?
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
v
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
T0*

Tmultiples0
E
gradients/Mean_grad/Shape_2ShapeSquare*
T0*
out_type0
D
gradients/Mean_grad/Shape_3Const*
dtype0*
valueB 
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
I
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0
n
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0
l
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0
h
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

SrcT0*
Truncate( *

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
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
gradients/div_no_nan_grad/ShapeShapeAdd_4*
T0*
out_type0
J
!gradients/div_no_nan_grad/Shape_1ShapeAdd_4*
T0*
out_type0
?
/gradients/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_no_nan_grad/Shape!gradients/div_no_nan_grad/Shape_1*
T0
m
$gradients/div_no_nan_grad/div_no_nanDivNoNan+gradients/sub_grad/tuple/control_dependencyAdd_4*
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
gradients/div_no_nan_grad/NegNegAdd_4*
T0
a
&gradients/div_no_nan_grad/div_no_nan_1DivNoNangradients/div_no_nan_grad/NegAdd_4*
T0
j
&gradients/div_no_nan_grad/div_no_nan_2DivNoNan&gradients/div_no_nan_grad/div_no_nan_1Add_4*
T0
?
gradients/div_no_nan_grad/mulMul+gradients/sub_grad/tuple/control_dependency&gradients/div_no_nan_grad/div_no_nan_2*
T0
?
gradients/div_no_nan_grad/Sum_1Sumgradients/div_no_nan_grad/mul1gradients/div_no_nan_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
#gradients/div_no_nan_grad/Reshape_1Reshapegradients/div_no_nan_grad/Sum_1!gradients/div_no_nan_grad/Shape_1*
T0*
Tshape0
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
gradients/Add_4_grad/ShapeShapetruediv*
T0*
out_type0
E
gradients/Add_4_grad/Shape_1ShapeMul_4*
T0*
out_type0
?
*gradients/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_4_grad/Shapegradients/Add_4_grad/Shape_1*
T0
?
gradients/Add_4_grad/SumSumgradients/AddN*gradients/Add_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_4_grad/ReshapeReshapegradients/Add_4_grad/Sumgradients/Add_4_grad/Shape*
T0*
Tshape0
?
gradients/Add_4_grad/Sum_1Sumgradients/AddN,gradients/Add_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_4_grad/Reshape_1Reshapegradients/Add_4_grad/Sum_1gradients/Add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_4_grad/tuple/group_depsNoOp^gradients/Add_4_grad/Reshape^gradients/Add_4_grad/Reshape_1
?
-gradients/Add_4_grad/tuple/control_dependencyIdentitygradients/Add_4_grad/Reshape&^gradients/Add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_4_grad/Reshape
?
/gradients/Add_4_grad/tuple/control_dependency_1Identitygradients/Add_4_grad/Reshape_1&^gradients/Add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_4_grad/Reshape_1
A
gradients/Mul_4_grad/ShapeShapemod*
T0*
out_type0
G
gradients/Mul_4_grad/Shape_1ShapeMul_4/y*
T0*
out_type0
?
*gradients/Mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_4_grad/Shapegradients/Mul_4_grad/Shape_1*
T0
b
gradients/Mul_4_grad/MulMul/gradients/Add_4_grad/tuple/control_dependency_1Mul_4/y*
T0
?
gradients/Mul_4_grad/SumSumgradients/Mul_4_grad/Mul*gradients/Mul_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_4_grad/ReshapeReshapegradients/Mul_4_grad/Sumgradients/Mul_4_grad/Shape*
T0*
Tshape0
`
gradients/Mul_4_grad/Mul_1Mulmod/gradients/Add_4_grad/tuple/control_dependency_1*
T0
?
gradients/Mul_4_grad/Sum_1Sumgradients/Mul_4_grad/Mul_1,gradients/Mul_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_4_grad/Reshape_1Reshapegradients/Mul_4_grad/Sum_1gradients/Mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_4_grad/tuple/group_depsNoOp^gradients/Mul_4_grad/Reshape^gradients/Mul_4_grad/Reshape_1
?
-gradients/Mul_4_grad/tuple/control_dependencyIdentitygradients/Mul_4_grad/Reshape&^gradients/Mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_4_grad/Reshape
?
/gradients/Mul_4_grad/tuple/control_dependency_1Identitygradients/Mul_4_grad/Reshape_1&^gradients/Mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_4_grad/Reshape_1
C
gradients/mod_grad/ShapeShapetruediv*
T0*
out_type0
C
gradients/mod_grad/Shape_1Const*
dtype0*
valueB 
?
(gradients/mod_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mod_grad/Shapegradients/mod_grad/Shape_1*
T0
@
gradients/mod_grad/FloorDivFloorDivtruedivmod/y*
T0
?
gradients/mod_grad/SumSum-gradients/Mul_4_grad/tuple/control_dependency(gradients/mod_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/mod_grad/ReshapeReshapegradients/mod_grad/Sumgradients/mod_grad/Shape*
T0*
Tshape0
C
gradients/mod_grad/NegNeggradients/mod_grad/FloorDiv*
T0
m
gradients/mod_grad/mulMul-gradients/Mul_4_grad/tuple/control_dependencygradients/mod_grad/Neg*
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
gradients/AddN_1AddN-gradients/Add_4_grad/tuple/control_dependency+gradients/mod_grad/tuple/control_dependency*
N*
T0*/
_class%
#!loc:@gradients/Add_4_grad/Reshape
E
gradients/truediv_grad/ShapeShapeAdd_3*
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
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
1
gradients/truediv_grad/NegNegAdd_3*
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
C
gradients/Add_3_grad/ShapeShapeMul_3*
T0*
out_type0
E
gradients/Add_3_grad/Shape_1ShapeAdd_2*
T0*
out_type0
?
*gradients/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_3_grad/Shapegradients/Add_3_grad/Shape_1*
T0
?
gradients/Add_3_grad/SumSum/gradients/truediv_grad/tuple/control_dependency*gradients/Add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_3_grad/ReshapeReshapegradients/Add_3_grad/Sumgradients/Add_3_grad/Shape*
T0*
Tshape0
?
gradients/Add_3_grad/Sum_1Sum/gradients/truediv_grad/tuple/control_dependency,gradients/Add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_3_grad/Reshape_1Reshapegradients/Add_3_grad/Sum_1gradients/Add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_3_grad/tuple/group_depsNoOp^gradients/Add_3_grad/Reshape^gradients/Add_3_grad/Reshape_1
?
-gradients/Add_3_grad/tuple/control_dependencyIdentitygradients/Add_3_grad/Reshape&^gradients/Add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_3_grad/Reshape
?
/gradients/Add_3_grad/tuple/control_dependency_1Identitygradients/Add_3_grad/Reshape_1&^gradients/Add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_3_grad/Reshape_1
J
gradients/Mul_3_grad/ShapeShapedevice_input*
T0*
out_type0
L
gradients/Mul_3_grad/Shape_1ShapePdevice/read*
T0*
out_type0
?
*gradients/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_3_grad/Shapegradients/Mul_3_grad/Shape_1*
T0
e
gradients/Mul_3_grad/MulMul-gradients/Add_3_grad/tuple/control_dependencyPdevice/read*
T0
?
gradients/Mul_3_grad/SumSumgradients/Mul_3_grad/Mul*gradients/Mul_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_3_grad/ReshapeReshapegradients/Mul_3_grad/Sumgradients/Mul_3_grad/Shape*
T0*
Tshape0
g
gradients/Mul_3_grad/Mul_1Muldevice_input-gradients/Add_3_grad/tuple/control_dependency*
T0
?
gradients/Mul_3_grad/Sum_1Sumgradients/Mul_3_grad/Mul_1,gradients/Mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_3_grad/Reshape_1Reshapegradients/Mul_3_grad/Sum_1gradients/Mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_3_grad/tuple/group_depsNoOp^gradients/Mul_3_grad/Reshape^gradients/Mul_3_grad/Reshape_1
?
-gradients/Mul_3_grad/tuple/control_dependencyIdentitygradients/Mul_3_grad/Reshape&^gradients/Mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_3_grad/Reshape
?
/gradients/Mul_3_grad/tuple/control_dependency_1Identitygradients/Mul_3_grad/Reshape_1&^gradients/Mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_3_grad/Reshape_1
C
gradients/Add_2_grad/ShapeShapeMul_2*
T0*
out_type0
E
gradients/Add_2_grad/Shape_1ShapeAdd_1*
T0*
out_type0
?
*gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_2_grad/Shapegradients/Add_2_grad/Shape_1*
T0
?
gradients/Add_2_grad/SumSum/gradients/Add_3_grad/tuple/control_dependency_1*gradients/Add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_2_grad/ReshapeReshapegradients/Add_2_grad/Sumgradients/Add_2_grad/Shape*
T0*
Tshape0
?
gradients/Add_2_grad/Sum_1Sum/gradients/Add_3_grad/tuple/control_dependency_1,gradients/Add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_2_grad/Reshape_1Reshapegradients/Add_2_grad/Sum_1gradients/Add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_2_grad/tuple/group_depsNoOp^gradients/Add_2_grad/Reshape^gradients/Add_2_grad/Reshape_1
?
-gradients/Add_2_grad/tuple/control_dependencyIdentitygradients/Add_2_grad/Reshape&^gradients/Add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_2_grad/Reshape
?
/gradients/Add_2_grad/tuple/control_dependency_1Identitygradients/Add_2_grad/Reshape_1&^gradients/Add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_2_grad/Reshape_1
H
gradients/Mul_2_grad/ShapeShape
imei_input*
T0*
out_type0
J
gradients/Mul_2_grad/Shape_1Shape
Pimei/read*
T0*
out_type0
?
*gradients/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_2_grad/Shapegradients/Mul_2_grad/Shape_1*
T0
c
gradients/Mul_2_grad/MulMul-gradients/Add_2_grad/tuple/control_dependency
Pimei/read*
T0
?
gradients/Mul_2_grad/SumSumgradients/Mul_2_grad/Mul*gradients/Mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_2_grad/ReshapeReshapegradients/Mul_2_grad/Sumgradients/Mul_2_grad/Shape*
T0*
Tshape0
e
gradients/Mul_2_grad/Mul_1Mul
imei_input-gradients/Add_2_grad/tuple/control_dependency*
T0
?
gradients/Mul_2_grad/Sum_1Sumgradients/Mul_2_grad/Mul_1,gradients/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_2_grad/Reshape_1Reshapegradients/Mul_2_grad/Sum_1gradients/Mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_2_grad/tuple/group_depsNoOp^gradients/Mul_2_grad/Reshape^gradients/Mul_2_grad/Reshape_1
?
-gradients/Mul_2_grad/tuple/control_dependencyIdentitygradients/Mul_2_grad/Reshape&^gradients/Mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_2_grad/Reshape
?
/gradients/Mul_2_grad/tuple/control_dependency_1Identitygradients/Mul_2_grad/Reshape_1&^gradients/Mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_2_grad/Reshape_1
C
gradients/Add_1_grad/ShapeShapeMul_1*
T0*
out_type0
C
gradients/Add_1_grad/Shape_1ShapeAdd*
T0*
out_type0
?
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0
?
gradients/Add_1_grad/SumSum/gradients/Add_2_grad/tuple/control_dependency_1*gradients/Add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0
?
gradients/Add_1_grad/Sum_1Sum/gradients/Add_2_grad/tuple/control_dependency_1,gradients/Add_1_grad/BroadcastGradientArgs:1*

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
I
gradients/Mul_1_grad/ShapeShapeemail_input*
T0*
out_type0
K
gradients/Mul_1_grad/Shape_1ShapePemail/read*
T0*
out_type0
?
*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
d
gradients/Mul_1_grad/MulMul-gradients/Add_1_grad/tuple/control_dependencyPemail/read*
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
f
gradients/Mul_1_grad/Mul_1Mulemail_input-gradients/Add_1_grad/tuple/control_dependency*
T0
?
gradients/Mul_1_grad/Sum_1Sumgradients/Mul_1_grad/Mul_1,gradients/Mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_1_grad/Reshape_1Reshapegradients/Mul_1_grad/Sum_1gradients/Mul_1_grad/Shape_1*
T0*
Tshape0
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
gradients/Add_grad/SumSum/gradients/Add_1_grad/tuple/control_dependency_1(gradients/Add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0
?
gradients/Add_grad/Sum_1Sum/gradients/Add_1_grad/tuple/control_dependency_1*gradients/Add_grad/BroadcastGradientArgs:1*

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
gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
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
?
(train/update_Pemail/ApplyGradientDescentApplyGradientDescentPemailtrain/learning_rate/gradients/Mul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Pemail*
use_locking( 
?
'train/update_Pimei/ApplyGradientDescentApplyGradientDescentPimeitrain/learning_rate/gradients/Mul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@Pimei
?
)train/update_Pdevice/ApplyGradientDescentApplyGradientDescentPdevicetrain/learning_rate/gradients/Mul_3_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Pdevice
?
trainNoOp*^train/update_Pdevice/ApplyGradientDescent)^train/update_Pemail/ApplyGradientDescent(^train/update_Pimei/ApplyGradientDescent,^train/update_Plocation/ApplyGradientDescent
?
initNoOp^Pdevice/Assign^Pemail/Assign^Pimei/Assign^Plocation/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign
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
?
save/SaveV2/tensor_namesConst*?
value?B?BPdeviceBPemailBPimeiB	PlocationBVariableB
Variable_1B
Variable_2B
Variable_3B
Variable_4B
Variable_5B
Variable_6B
Variable_7*
dtype0
_
save/SaveV2/shape_and_slicesConst*+
value"B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesPdevicePemailPimei	PlocationVariable
Variable_1
Variable_2
Variable_3
Variable_4
Variable_5
Variable_6
Variable_7*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?BPdeviceBPemailBPimeiB	PlocationBVariableB
Variable_1B
Variable_2B
Variable_3B
Variable_4B
Variable_5B
Variable_6B
Variable_7
q
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
|
save/AssignAssignPdevicesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Pdevice*
validate_shape(
~
save/Assign_1AssignPemailsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Pemail*
validate_shape(
|
save/Assign_2AssignPimeisave/RestoreV2:2*
T0*
_class

loc:@Pimei*
validate_shape(*
use_locking(
?
save/Assign_3Assign	Plocationsave/RestoreV2:3*
T0*
_class
loc:@Plocation*
validate_shape(*
use_locking(
?
save/Assign_4AssignVariablesave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_5Assign
Variable_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save/Assign_7Assign
Variable_3save/RestoreV2:7*
T0*
_class
loc:@Variable_3*
validate_shape(*
use_locking(
?
save/Assign_8Assign
Variable_4save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(
?
save/Assign_9Assign
Variable_5save/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
?
save/Assign_10Assign
Variable_6save/RestoreV2:10*
T0*
_class
loc:@Variable_6*
validate_shape(*
use_locking(
?
save/Assign_11Assign
Variable_7save/RestoreV2:11*
T0*
_class
loc:@Variable_7*
validate_shape(*
use_locking(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"?