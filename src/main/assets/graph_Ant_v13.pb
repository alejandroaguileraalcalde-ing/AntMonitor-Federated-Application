
9
location_inputPlaceholder*
shape:*
dtype0
6
email_inputPlaceholder*
dtype0*
shape:
5

imei_inputPlaceholder*
shape:*
dtype0
7
device_inputPlaceholder*
dtype0*
shape:
=
serialnumber_inputPlaceholder*
dtype0*
shape:
;
macaddress_inputPlaceholder*
shape:*
dtype0
;
advertiser_inputPlaceholder*
shape:*
dtype0
1
targetPlaceholder*
dtype0*
shape:
4
	PlocationPlaceholder*
shape:*
dtype0
1
PemailPlaceholder*
shape:*
dtype0
0
PimeiPlaceholder*
shape:*
dtype0
2
PdevicePlaceholder*
dtype0*
shape:
8
PserialnumberPlaceholder*
dtype0*
shape:
6
PmacaddressPlaceholder*
dtype0*
shape:
6
PadvertiserPlaceholder*
shape:*
dtype0
1
umbralPlaceholder*
shape:*
dtype0
?
Vaux/initial_valueConst*
valueB
 *    *
dtype0
P
Vaux
VariableV2*
dtype0*
	container *
shape: *
shared_name 
z
Vaux/AssignAssignVauxVaux/initial_value*
T0*
_class
	loc:@Vaux*
validate_shape(*
use_locking(
=
	Vaux/readIdentityVaux*
T0*
_class
	loc:@Vaux
.
MulMullocation_input	Plocation*
T0
#
AddAddMul	Vaux/read*
T0
*
Mul_1Mulemail_inputPemail*
T0
!
Add_1AddMul_1Add*
T0
(
Mul_2Mul
imei_inputPimei*
T0
#
Add_2AddMul_2Add_1*
T0
,
Mul_3Muldevice_inputPdevice*
T0
#
Add_3AddMul_3Add_2*
T0
8
Mul_4Mulserialnumber_inputPserialnumber*
T0
#
Add_4AddMul_4Add_3*
T0
4
Mul_5Mulmacaddress_inputPmacaddress*
T0
#
Add_5AddMul_5Add_4*
T0
4
Mul_6Muladvertiser_inputPadvertiser*
T0
#
Add_6AddMul_6Add_5*
T0
*
truedivRealDivAdd_6umbral*
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
Mul_7/yConst*
valueB
 *  ??*
dtype0
#
Mul_7MulmodMul_7/y*
T0
%
Add_7AddtruedivMul_7*
T0
-

div_no_nanDivNoNanAdd_7Add_7*
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
gradients/ShapeConst*
dtype0*
valueB 
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
gradients/Mean_grad/addAddV2rangegradients/Mean_grad/Size*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
?
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
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
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
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
gradients/Mean_grad/Maximum/yConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
v
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0
E
gradients/Mean_grad/Shape_2ShapeSquare*
out_type0*
T0
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
gradients/div_no_nan_grad/ShapeShapeAdd_7*
T0*
out_type0
J
!gradients/div_no_nan_grad/Shape_1ShapeAdd_7*
T0*
out_type0
?
/gradients/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_no_nan_grad/Shape!gradients/div_no_nan_grad/Shape_1*
T0
m
$gradients/div_no_nan_grad/div_no_nanDivNoNan+gradients/sub_grad/tuple/control_dependencyAdd_7*
T0
?
gradients/div_no_nan_grad/SumSum$gradients/div_no_nan_grad/div_no_nan/gradients/div_no_nan_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
!gradients/div_no_nan_grad/ReshapeReshapegradients/div_no_nan_grad/Sumgradients/div_no_nan_grad/Shape*
T0*
Tshape0
4
gradients/div_no_nan_grad/NegNegAdd_7*
T0
a
&gradients/div_no_nan_grad/div_no_nan_1DivNoNangradients/div_no_nan_grad/NegAdd_7*
T0
j
&gradients/div_no_nan_grad/div_no_nan_2DivNoNan&gradients/div_no_nan_grad/div_no_nan_1Add_7*
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
gradients/Add_7_grad/ShapeShapetruediv*
out_type0*
T0
E
gradients/Add_7_grad/Shape_1ShapeMul_7*
T0*
out_type0
?
*gradients/Add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_7_grad/Shapegradients/Add_7_grad/Shape_1*
T0
?
gradients/Add_7_grad/SumSumgradients/AddN*gradients/Add_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_7_grad/ReshapeReshapegradients/Add_7_grad/Sumgradients/Add_7_grad/Shape*
T0*
Tshape0
?
gradients/Add_7_grad/Sum_1Sumgradients/AddN,gradients/Add_7_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_7_grad/Reshape_1Reshapegradients/Add_7_grad/Sum_1gradients/Add_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_7_grad/tuple/group_depsNoOp^gradients/Add_7_grad/Reshape^gradients/Add_7_grad/Reshape_1
?
-gradients/Add_7_grad/tuple/control_dependencyIdentitygradients/Add_7_grad/Reshape&^gradients/Add_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_7_grad/Reshape
?
/gradients/Add_7_grad/tuple/control_dependency_1Identitygradients/Add_7_grad/Reshape_1&^gradients/Add_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_7_grad/Reshape_1
A
gradients/Mul_7_grad/ShapeShapemod*
T0*
out_type0
G
gradients/Mul_7_grad/Shape_1ShapeMul_7/y*
T0*
out_type0
?
*gradients/Mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_7_grad/Shapegradients/Mul_7_grad/Shape_1*
T0
b
gradients/Mul_7_grad/MulMul/gradients/Add_7_grad/tuple/control_dependency_1Mul_7/y*
T0
?
gradients/Mul_7_grad/SumSumgradients/Mul_7_grad/Mul*gradients/Mul_7_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_7_grad/ReshapeReshapegradients/Mul_7_grad/Sumgradients/Mul_7_grad/Shape*
T0*
Tshape0
`
gradients/Mul_7_grad/Mul_1Mulmod/gradients/Add_7_grad/tuple/control_dependency_1*
T0
?
gradients/Mul_7_grad/Sum_1Sumgradients/Mul_7_grad/Mul_1,gradients/Mul_7_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_7_grad/Reshape_1Reshapegradients/Mul_7_grad/Sum_1gradients/Mul_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_7_grad/tuple/group_depsNoOp^gradients/Mul_7_grad/Reshape^gradients/Mul_7_grad/Reshape_1
?
-gradients/Mul_7_grad/tuple/control_dependencyIdentitygradients/Mul_7_grad/Reshape&^gradients/Mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_7_grad/Reshape
?
/gradients/Mul_7_grad/tuple/control_dependency_1Identitygradients/Mul_7_grad/Reshape_1&^gradients/Mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_7_grad/Reshape_1
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
gradients/mod_grad/SumSum-gradients/Mul_7_grad/tuple/control_dependency(gradients/mod_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/mod_grad/ReshapeReshapegradients/mod_grad/Sumgradients/mod_grad/Shape*
T0*
Tshape0
C
gradients/mod_grad/NegNeggradients/mod_grad/FloorDiv*
T0
m
gradients/mod_grad/mulMul-gradients/Mul_7_grad/tuple/control_dependencygradients/mod_grad/Neg*
T0
?
gradients/mod_grad/Sum_1Sumgradients/mod_grad/mul*gradients/mod_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
gradients/AddN_1AddN-gradients/Add_7_grad/tuple/control_dependency+gradients/mod_grad/tuple/control_dependency*
N*
T0*/
_class%
#!loc:@gradients/Add_7_grad/Reshape
E
gradients/truediv_grad/ShapeShapeAdd_6*
T0*
out_type0
H
gradients/truediv_grad/Shape_1Shapeumbral*
T0*
out_type0
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
1
gradients/truediv_grad/NegNegAdd_6*
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
gradients/Add_6_grad/ShapeShapeMul_6*
T0*
out_type0
E
gradients/Add_6_grad/Shape_1ShapeAdd_5*
T0*
out_type0
?
*gradients/Add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_6_grad/Shapegradients/Add_6_grad/Shape_1*
T0
?
gradients/Add_6_grad/SumSum/gradients/truediv_grad/tuple/control_dependency*gradients/Add_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_6_grad/ReshapeReshapegradients/Add_6_grad/Sumgradients/Add_6_grad/Shape*
T0*
Tshape0
?
gradients/Add_6_grad/Sum_1Sum/gradients/truediv_grad/tuple/control_dependency,gradients/Add_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_6_grad/Reshape_1Reshapegradients/Add_6_grad/Sum_1gradients/Add_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_6_grad/tuple/group_depsNoOp^gradients/Add_6_grad/Reshape^gradients/Add_6_grad/Reshape_1
?
-gradients/Add_6_grad/tuple/control_dependencyIdentitygradients/Add_6_grad/Reshape&^gradients/Add_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_6_grad/Reshape
?
/gradients/Add_6_grad/tuple/control_dependency_1Identitygradients/Add_6_grad/Reshape_1&^gradients/Add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_6_grad/Reshape_1
C
gradients/Add_5_grad/ShapeShapeMul_5*
out_type0*
T0
E
gradients/Add_5_grad/Shape_1ShapeAdd_4*
T0*
out_type0
?
*gradients/Add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_5_grad/Shapegradients/Add_5_grad/Shape_1*
T0
?
gradients/Add_5_grad/SumSum/gradients/Add_6_grad/tuple/control_dependency_1*gradients/Add_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_5_grad/ReshapeReshapegradients/Add_5_grad/Sumgradients/Add_5_grad/Shape*
T0*
Tshape0
?
gradients/Add_5_grad/Sum_1Sum/gradients/Add_6_grad/tuple/control_dependency_1,gradients/Add_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_5_grad/Reshape_1Reshapegradients/Add_5_grad/Sum_1gradients/Add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_5_grad/tuple/group_depsNoOp^gradients/Add_5_grad/Reshape^gradients/Add_5_grad/Reshape_1
?
-gradients/Add_5_grad/tuple/control_dependencyIdentitygradients/Add_5_grad/Reshape&^gradients/Add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_5_grad/Reshape
?
/gradients/Add_5_grad/tuple/control_dependency_1Identitygradients/Add_5_grad/Reshape_1&^gradients/Add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_5_grad/Reshape_1
C
gradients/Add_4_grad/ShapeShapeMul_4*
T0*
out_type0
E
gradients/Add_4_grad/Shape_1ShapeAdd_3*
T0*
out_type0
?
*gradients/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_4_grad/Shapegradients/Add_4_grad/Shape_1*
T0
?
gradients/Add_4_grad/SumSum/gradients/Add_5_grad/tuple/control_dependency_1*gradients/Add_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_4_grad/ReshapeReshapegradients/Add_4_grad/Sumgradients/Add_4_grad/Shape*
T0*
Tshape0
?
gradients/Add_4_grad/Sum_1Sum/gradients/Add_5_grad/tuple/control_dependency_1,gradients/Add_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
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
C
gradients/Add_3_grad/ShapeShapeMul_3*
out_type0*
T0
E
gradients/Add_3_grad/Shape_1ShapeAdd_2*
T0*
out_type0
?
*gradients/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_3_grad/Shapegradients/Add_3_grad/Shape_1*
T0
?
gradients/Add_3_grad/SumSum/gradients/Add_4_grad/tuple/control_dependency_1*gradients/Add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_3_grad/ReshapeReshapegradients/Add_3_grad/Sumgradients/Add_3_grad/Shape*
T0*
Tshape0
?
gradients/Add_3_grad/Sum_1Sum/gradients/Add_4_grad/tuple/control_dependency_1,gradients/Add_3_grad/BroadcastGradientArgs:1*

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
gradients/Add_2_grad/Sum_1Sum/gradients/Add_3_grad/tuple/control_dependency_1,gradients/Add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_2_grad/Reshape_1Reshapegradients/Add_2_grad/Sum_1gradients/Add_2_grad/Shape_1*
Tshape0*
T0
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
gradients/Add_1_grad/Sum_1Sum/gradients/Add_2_grad/tuple/control_dependency_1,gradients/Add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
Tshape0*
T0
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
?
gradients/Add_grad/ShapeShapeMul*
T0*
out_type0
G
gradients/Add_grad/Shape_1Shape	Vaux/read*
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
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
Tshape0*
T0
?
gradients/Add_grad/Sum_1Sum/gradients/Add_1_grad/tuple/control_dependency_1*gradients/Add_grad/BroadcastGradientArgs:1*
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
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*-
_class#
!loc:@gradients/Add_grad/Reshape*
T0
?
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1
@
train/learning_rateConst*
valueB
 *
?#<*
dtype0
?
&train/update_Vaux/ApplyGradientDescentApplyGradientDescentVauxtrain/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@Vaux
6
trainNoOp'^train/update_Vaux/ApplyGradientDescent

initNoOp^Vaux/Assign
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
save/SaveV2/tensor_namesConst*
valueBBVaux*
dtype0
I
save/SaveV2/shape_and_slicesConst*
valueB
B *
dtype0
p
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVaux*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
[
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBBVaux*
dtype0
[
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
v
save/AssignAssignVauxsave/RestoreV2*
_class
	loc:@Vaux*
validate_shape(*
use_locking(*
T0
&
save/restore_allNoOp^save/Assign"?