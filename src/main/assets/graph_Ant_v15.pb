
9
location_inputPlaceholder*
dtype0*
shape:
6
email_inputPlaceholder*
dtype0*
shape:
5

imei_inputPlaceholder*
dtype0*
shape:
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
dtype0*
shape:
D
Plocation/initial_valueConst*
dtype0*
valueB
 *  A
U
	Plocation
VariableV2*
shared_name *
dtype0*
	container *
shape: 
?
Plocation/AssignAssign	PlocationPlocation/initial_value*
_class
loc:@Plocation*
validate_shape(*
use_locking(*
T0
L
Plocation/readIdentity	Plocation*
_class
loc:@Plocation*
T0
A
Pemail/initial_valueConst*
valueB
 *   A*
dtype0
R
Pemail
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pemail/AssignAssignPemailPemail/initial_value*
_class
loc:@Pemail*
validate_shape(*
use_locking(*
T0
C
Pemail/readIdentityPemail*
T0*
_class
loc:@Pemail
@
Pimei/initial_valueConst*
valueB
 *  @@*
dtype0
Q
Pimei
VariableV2*
dtype0*
	container *
shape: *
shared_name 
~
Pimei/AssignAssignPimeiPimei/initial_value*
use_locking(*
T0*
_class

loc:@Pimei*
validate_shape(
@

Pimei/readIdentityPimei*
_class

loc:@Pimei*
T0
B
Pdevice/initial_valueConst*
valueB
 *   @*
dtype0
S
Pdevice
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pdevice/AssignAssignPdevicePdevice/initial_value*
use_locking(*
T0*
_class
loc:@Pdevice*
validate_shape(
F
Pdevice/readIdentityPdevice*
T0*
_class
loc:@Pdevice
H
Pserialnumber/initial_valueConst*
valueB
 *  @@*
dtype0
Y
Pserialnumber
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pserialnumber/AssignAssignPserialnumberPserialnumber/initial_value*
use_locking(*
T0* 
_class
loc:@Pserialnumber*
validate_shape(
X
Pserialnumber/readIdentityPserialnumber*
T0* 
_class
loc:@Pserialnumber
F
Pmacaddress/initial_valueConst*
valueB
 *  ??*
dtype0
W
Pmacaddress
VariableV2*
	container *
shape: *
shared_name *
dtype0
?
Pmacaddress/AssignAssignPmacaddressPmacaddress/initial_value*
_class
loc:@Pmacaddress*
validate_shape(*
use_locking(*
T0
R
Pmacaddress/readIdentityPmacaddress*
T0*
_class
loc:@Pmacaddress
F
Padvertiser/initial_valueConst*
valueB
 *  ?@*
dtype0
W
Padvertiser
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Padvertiser/AssignAssignPadvertiserPadvertiser/initial_value*
_class
loc:@Padvertiser*
validate_shape(*
use_locking(*
T0
R
Padvertiser/readIdentityPadvertiser*
T0*
_class
loc:@Padvertiser
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
=
Mul_4Mulserialnumber_inputPserialnumber/read*
T0
#
Add_4AddMul_4Add_3*
T0
9
Mul_5Mulmacaddress_inputPmacaddress/read*
T0
#
Add_5AddMul_5Add_4*
T0
9
Mul_6Muladvertiser_inputPadvertiser/read*
T0
#
Add_6AddMul_6Add_5*
T0
"
outputIdentityAdd_6*
T0
;
location_input_1Placeholder*
dtype0*
shape:
8
email_input_1Placeholder*
dtype0*
shape:
7
imei_input_1Placeholder*
shape:*
dtype0
9
device_input_1Placeholder*
dtype0*
shape:
?
serialnumber_input_1Placeholder*
dtype0*
shape:
=
macaddress_input_1Placeholder*
shape:*
dtype0
=
advertiser_input_1Placeholder*
shape:*
dtype0
1
targetPlaceholder*
dtype0*
shape:
F
Plocation_1/initial_valueConst*
valueB
 *  A*
dtype0
W
Plocation_1
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Plocation_1/AssignAssignPlocation_1Plocation_1/initial_value*
use_locking(*
T0*
_class
loc:@Plocation_1*
validate_shape(
R
Plocation_1/readIdentityPlocation_1*
T0*
_class
loc:@Plocation_1
C
Pemail_1/initial_valueConst*
valueB
 *   A*
dtype0
T
Pemail_1
VariableV2*
shape: *
shared_name *
dtype0*
	container 
?
Pemail_1/AssignAssignPemail_1Pemail_1/initial_value*
use_locking(*
T0*
_class
loc:@Pemail_1*
validate_shape(
I
Pemail_1/readIdentityPemail_1*
T0*
_class
loc:@Pemail_1
B
Pimei_1/initial_valueConst*
valueB
 *  @@*
dtype0
S
Pimei_1
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pimei_1/AssignAssignPimei_1Pimei_1/initial_value*
use_locking(*
T0*
_class
loc:@Pimei_1*
validate_shape(
F
Pimei_1/readIdentityPimei_1*
T0*
_class
loc:@Pimei_1
D
Pdevice_1/initial_valueConst*
valueB
 *   @*
dtype0
U
	Pdevice_1
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pdevice_1/AssignAssign	Pdevice_1Pdevice_1/initial_value*
use_locking(*
T0*
_class
loc:@Pdevice_1*
validate_shape(
L
Pdevice_1/readIdentity	Pdevice_1*
T0*
_class
loc:@Pdevice_1
J
Pserialnumber_1/initial_valueConst*
valueB
 *  @@*
dtype0
[
Pserialnumber_1
VariableV2*
	container *
shape: *
shared_name *
dtype0
?
Pserialnumber_1/AssignAssignPserialnumber_1Pserialnumber_1/initial_value*
use_locking(*
T0*"
_class
loc:@Pserialnumber_1*
validate_shape(
^
Pserialnumber_1/readIdentityPserialnumber_1*
T0*"
_class
loc:@Pserialnumber_1
H
Pmacaddress_1/initial_valueConst*
valueB
 *  ??*
dtype0
Y
Pmacaddress_1
VariableV2*
shared_name *
dtype0*
	container *
shape: 
?
Pmacaddress_1/AssignAssignPmacaddress_1Pmacaddress_1/initial_value*
use_locking(*
T0* 
_class
loc:@Pmacaddress_1*
validate_shape(
X
Pmacaddress_1/readIdentityPmacaddress_1* 
_class
loc:@Pmacaddress_1*
T0
H
Padvertiser_1/initial_valueConst*
valueB
 *  ?@*
dtype0
Y
Padvertiser_1
VariableV2*
shape: *
shared_name *
dtype0*
	container 
?
Padvertiser_1/AssignAssignPadvertiser_1Padvertiser_1/initial_value*
use_locking(*
T0* 
_class
loc:@Padvertiser_1*
validate_shape(
X
Padvertiser_1/readIdentityPadvertiser_1*
T0* 
_class
loc:@Padvertiser_1
9
Mul_7Mullocation_input_1Plocation_1/read*
T0
4
Add_7/yConst*
valueB
 *    *
dtype0
%
Add_7AddMul_7Add_7/y*
T0
3
Mul_8Mulemail_input_1Pemail_1/read*
T0
#
Add_8AddMul_8Add_7*
T0
1
Mul_9Mulimei_input_1Pimei_1/read*
T0
#
Add_9AddMul_9Add_8*
T0
6
Mul_10Muldevice_input_1Pdevice_1/read*
T0
%
Add_10AddMul_10Add_9*
T0
B
Mul_11Mulserialnumber_input_1Pserialnumber_1/read*
T0
&
Add_11AddMul_11Add_10*
T0
>
Mul_12Mulmacaddress_input_1Pmacaddress_1/read*
T0
&
Add_12AddMul_12Add_11*
T0
>
Mul_13Muladvertiser_input_1Padvertiser_1/read*
T0
&
Add_13AddMul_13Add_12*
T0
%
output_1IdentityAdd_13*
T0
%
subSuboutput_1target*
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
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*,
_class"
 loc:@gradients/Mean_grad/Shape*

index_type0*
T0
?
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
N*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
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
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
v
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0
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
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
T0*

Tidx0*
	keep_dims( 
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Maximum_1/yConst*
dtype0*
value	B :
n
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0
l
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0
h
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*
Truncate( *

DstT0*

SrcT0
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
D
gradients/sub_grad/ShapeShapeoutput_1*
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
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
E
gradients/Add_13_grad/ShapeShapeMul_13*
T0*
out_type0
G
gradients/Add_13_grad/Shape_1ShapeAdd_12*
T0*
out_type0
?
+gradients/Add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_13_grad/Shapegradients/Add_13_grad/Shape_1*
T0
?
gradients/Add_13_grad/SumSum+gradients/sub_grad/tuple/control_dependency+gradients/Add_13_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_13_grad/ReshapeReshapegradients/Add_13_grad/Sumgradients/Add_13_grad/Shape*
T0*
Tshape0
?
gradients/Add_13_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency-gradients/Add_13_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Add_13_grad/Reshape_1Reshapegradients/Add_13_grad/Sum_1gradients/Add_13_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_13_grad/tuple/group_depsNoOp^gradients/Add_13_grad/Reshape ^gradients/Add_13_grad/Reshape_1
?
.gradients/Add_13_grad/tuple/control_dependencyIdentitygradients/Add_13_grad/Reshape'^gradients/Add_13_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_13_grad/Reshape
?
0gradients/Add_13_grad/tuple/control_dependency_1Identitygradients/Add_13_grad/Reshape_1'^gradients/Add_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_13_grad/Reshape_1
Q
gradients/Mul_13_grad/ShapeShapeadvertiser_input_1*
T0*
out_type0
S
gradients/Mul_13_grad/Shape_1ShapePadvertiser_1/read*
T0*
out_type0
?
+gradients/Mul_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_13_grad/Shapegradients/Mul_13_grad/Shape_1*
T0
m
gradients/Mul_13_grad/MulMul.gradients/Add_13_grad/tuple/control_dependencyPadvertiser_1/read*
T0
?
gradients/Mul_13_grad/SumSumgradients/Mul_13_grad/Mul+gradients/Mul_13_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Mul_13_grad/ReshapeReshapegradients/Mul_13_grad/Sumgradients/Mul_13_grad/Shape*
T0*
Tshape0
o
gradients/Mul_13_grad/Mul_1Muladvertiser_input_1.gradients/Add_13_grad/tuple/control_dependency*
T0
?
gradients/Mul_13_grad/Sum_1Sumgradients/Mul_13_grad/Mul_1-gradients/Mul_13_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Mul_13_grad/Reshape_1Reshapegradients/Mul_13_grad/Sum_1gradients/Mul_13_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_13_grad/tuple/group_depsNoOp^gradients/Mul_13_grad/Reshape ^gradients/Mul_13_grad/Reshape_1
?
.gradients/Mul_13_grad/tuple/control_dependencyIdentitygradients/Mul_13_grad/Reshape'^gradients/Mul_13_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_13_grad/Reshape
?
0gradients/Mul_13_grad/tuple/control_dependency_1Identitygradients/Mul_13_grad/Reshape_1'^gradients/Mul_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_13_grad/Reshape_1
E
gradients/Add_12_grad/ShapeShapeMul_12*
T0*
out_type0
G
gradients/Add_12_grad/Shape_1ShapeAdd_11*
T0*
out_type0
?
+gradients/Add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_12_grad/Shapegradients/Add_12_grad/Shape_1*
T0
?
gradients/Add_12_grad/SumSum0gradients/Add_13_grad/tuple/control_dependency_1+gradients/Add_12_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_12_grad/ReshapeReshapegradients/Add_12_grad/Sumgradients/Add_12_grad/Shape*
T0*
Tshape0
?
gradients/Add_12_grad/Sum_1Sum0gradients/Add_13_grad/tuple/control_dependency_1-gradients/Add_12_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_12_grad/Reshape_1Reshapegradients/Add_12_grad/Sum_1gradients/Add_12_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_12_grad/tuple/group_depsNoOp^gradients/Add_12_grad/Reshape ^gradients/Add_12_grad/Reshape_1
?
.gradients/Add_12_grad/tuple/control_dependencyIdentitygradients/Add_12_grad/Reshape'^gradients/Add_12_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_12_grad/Reshape
?
0gradients/Add_12_grad/tuple/control_dependency_1Identitygradients/Add_12_grad/Reshape_1'^gradients/Add_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_12_grad/Reshape_1
Q
gradients/Mul_12_grad/ShapeShapemacaddress_input_1*
T0*
out_type0
S
gradients/Mul_12_grad/Shape_1ShapePmacaddress_1/read*
T0*
out_type0
?
+gradients/Mul_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_12_grad/Shapegradients/Mul_12_grad/Shape_1*
T0
m
gradients/Mul_12_grad/MulMul.gradients/Add_12_grad/tuple/control_dependencyPmacaddress_1/read*
T0
?
gradients/Mul_12_grad/SumSumgradients/Mul_12_grad/Mul+gradients/Mul_12_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Mul_12_grad/ReshapeReshapegradients/Mul_12_grad/Sumgradients/Mul_12_grad/Shape*
T0*
Tshape0
o
gradients/Mul_12_grad/Mul_1Mulmacaddress_input_1.gradients/Add_12_grad/tuple/control_dependency*
T0
?
gradients/Mul_12_grad/Sum_1Sumgradients/Mul_12_grad/Mul_1-gradients/Mul_12_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Mul_12_grad/Reshape_1Reshapegradients/Mul_12_grad/Sum_1gradients/Mul_12_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_12_grad/tuple/group_depsNoOp^gradients/Mul_12_grad/Reshape ^gradients/Mul_12_grad/Reshape_1
?
.gradients/Mul_12_grad/tuple/control_dependencyIdentitygradients/Mul_12_grad/Reshape'^gradients/Mul_12_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_12_grad/Reshape
?
0gradients/Mul_12_grad/tuple/control_dependency_1Identitygradients/Mul_12_grad/Reshape_1'^gradients/Mul_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_12_grad/Reshape_1
E
gradients/Add_11_grad/ShapeShapeMul_11*
T0*
out_type0
G
gradients/Add_11_grad/Shape_1ShapeAdd_10*
T0*
out_type0
?
+gradients/Add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_11_grad/Shapegradients/Add_11_grad/Shape_1*
T0
?
gradients/Add_11_grad/SumSum0gradients/Add_12_grad/tuple/control_dependency_1+gradients/Add_11_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_11_grad/ReshapeReshapegradients/Add_11_grad/Sumgradients/Add_11_grad/Shape*
T0*
Tshape0
?
gradients/Add_11_grad/Sum_1Sum0gradients/Add_12_grad/tuple/control_dependency_1-gradients/Add_11_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Add_11_grad/Reshape_1Reshapegradients/Add_11_grad/Sum_1gradients/Add_11_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_11_grad/tuple/group_depsNoOp^gradients/Add_11_grad/Reshape ^gradients/Add_11_grad/Reshape_1
?
.gradients/Add_11_grad/tuple/control_dependencyIdentitygradients/Add_11_grad/Reshape'^gradients/Add_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_11_grad/Reshape
?
0gradients/Add_11_grad/tuple/control_dependency_1Identitygradients/Add_11_grad/Reshape_1'^gradients/Add_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_11_grad/Reshape_1
S
gradients/Mul_11_grad/ShapeShapeserialnumber_input_1*
out_type0*
T0
U
gradients/Mul_11_grad/Shape_1ShapePserialnumber_1/read*
T0*
out_type0
?
+gradients/Mul_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_11_grad/Shapegradients/Mul_11_grad/Shape_1*
T0
o
gradients/Mul_11_grad/MulMul.gradients/Add_11_grad/tuple/control_dependencyPserialnumber_1/read*
T0
?
gradients/Mul_11_grad/SumSumgradients/Mul_11_grad/Mul+gradients/Mul_11_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Mul_11_grad/ReshapeReshapegradients/Mul_11_grad/Sumgradients/Mul_11_grad/Shape*
T0*
Tshape0
q
gradients/Mul_11_grad/Mul_1Mulserialnumber_input_1.gradients/Add_11_grad/tuple/control_dependency*
T0
?
gradients/Mul_11_grad/Sum_1Sumgradients/Mul_11_grad/Mul_1-gradients/Mul_11_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Mul_11_grad/Reshape_1Reshapegradients/Mul_11_grad/Sum_1gradients/Mul_11_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_11_grad/tuple/group_depsNoOp^gradients/Mul_11_grad/Reshape ^gradients/Mul_11_grad/Reshape_1
?
.gradients/Mul_11_grad/tuple/control_dependencyIdentitygradients/Mul_11_grad/Reshape'^gradients/Mul_11_grad/tuple/group_deps*0
_class&
$"loc:@gradients/Mul_11_grad/Reshape*
T0
?
0gradients/Mul_11_grad/tuple/control_dependency_1Identitygradients/Mul_11_grad/Reshape_1'^gradients/Mul_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_11_grad/Reshape_1
E
gradients/Add_10_grad/ShapeShapeMul_10*
T0*
out_type0
F
gradients/Add_10_grad/Shape_1ShapeAdd_9*
T0*
out_type0
?
+gradients/Add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_10_grad/Shapegradients/Add_10_grad/Shape_1*
T0
?
gradients/Add_10_grad/SumSum0gradients/Add_11_grad/tuple/control_dependency_1+gradients/Add_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_10_grad/ReshapeReshapegradients/Add_10_grad/Sumgradients/Add_10_grad/Shape*
T0*
Tshape0
?
gradients/Add_10_grad/Sum_1Sum0gradients/Add_11_grad/tuple/control_dependency_1-gradients/Add_10_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_10_grad/Reshape_1Reshapegradients/Add_10_grad/Sum_1gradients/Add_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_10_grad/tuple/group_depsNoOp^gradients/Add_10_grad/Reshape ^gradients/Add_10_grad/Reshape_1
?
.gradients/Add_10_grad/tuple/control_dependencyIdentitygradients/Add_10_grad/Reshape'^gradients/Add_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_10_grad/Reshape
?
0gradients/Add_10_grad/tuple/control_dependency_1Identitygradients/Add_10_grad/Reshape_1'^gradients/Add_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_10_grad/Reshape_1
M
gradients/Mul_10_grad/ShapeShapedevice_input_1*
T0*
out_type0
O
gradients/Mul_10_grad/Shape_1ShapePdevice_1/read*
T0*
out_type0
?
+gradients/Mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_10_grad/Shapegradients/Mul_10_grad/Shape_1*
T0
i
gradients/Mul_10_grad/MulMul.gradients/Add_10_grad/tuple/control_dependencyPdevice_1/read*
T0
?
gradients/Mul_10_grad/SumSumgradients/Mul_10_grad/Mul+gradients/Mul_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Mul_10_grad/ReshapeReshapegradients/Mul_10_grad/Sumgradients/Mul_10_grad/Shape*
T0*
Tshape0
k
gradients/Mul_10_grad/Mul_1Muldevice_input_1.gradients/Add_10_grad/tuple/control_dependency*
T0
?
gradients/Mul_10_grad/Sum_1Sumgradients/Mul_10_grad/Mul_1-gradients/Mul_10_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Mul_10_grad/Reshape_1Reshapegradients/Mul_10_grad/Sum_1gradients/Mul_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_10_grad/tuple/group_depsNoOp^gradients/Mul_10_grad/Reshape ^gradients/Mul_10_grad/Reshape_1
?
.gradients/Mul_10_grad/tuple/control_dependencyIdentitygradients/Mul_10_grad/Reshape'^gradients/Mul_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_10_grad/Reshape
?
0gradients/Mul_10_grad/tuple/control_dependency_1Identitygradients/Mul_10_grad/Reshape_1'^gradients/Mul_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_10_grad/Reshape_1
C
gradients/Add_9_grad/ShapeShapeMul_9*
T0*
out_type0
E
gradients/Add_9_grad/Shape_1ShapeAdd_8*
T0*
out_type0
?
*gradients/Add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_9_grad/Shapegradients/Add_9_grad/Shape_1*
T0
?
gradients/Add_9_grad/SumSum0gradients/Add_10_grad/tuple/control_dependency_1*gradients/Add_9_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_9_grad/ReshapeReshapegradients/Add_9_grad/Sumgradients/Add_9_grad/Shape*
T0*
Tshape0
?
gradients/Add_9_grad/Sum_1Sum0gradients/Add_10_grad/tuple/control_dependency_1,gradients/Add_9_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_9_grad/Reshape_1Reshapegradients/Add_9_grad/Sum_1gradients/Add_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_9_grad/tuple/group_depsNoOp^gradients/Add_9_grad/Reshape^gradients/Add_9_grad/Reshape_1
?
-gradients/Add_9_grad/tuple/control_dependencyIdentitygradients/Add_9_grad/Reshape&^gradients/Add_9_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_9_grad/Reshape*
T0
?
/gradients/Add_9_grad/tuple/control_dependency_1Identitygradients/Add_9_grad/Reshape_1&^gradients/Add_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_9_grad/Reshape_1
J
gradients/Mul_9_grad/ShapeShapeimei_input_1*
T0*
out_type0
L
gradients/Mul_9_grad/Shape_1ShapePimei_1/read*
T0*
out_type0
?
*gradients/Mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_9_grad/Shapegradients/Mul_9_grad/Shape_1*
T0
e
gradients/Mul_9_grad/MulMul-gradients/Add_9_grad/tuple/control_dependencyPimei_1/read*
T0
?
gradients/Mul_9_grad/SumSumgradients/Mul_9_grad/Mul*gradients/Mul_9_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_9_grad/ReshapeReshapegradients/Mul_9_grad/Sumgradients/Mul_9_grad/Shape*
T0*
Tshape0
g
gradients/Mul_9_grad/Mul_1Mulimei_input_1-gradients/Add_9_grad/tuple/control_dependency*
T0
?
gradients/Mul_9_grad/Sum_1Sumgradients/Mul_9_grad/Mul_1,gradients/Mul_9_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_9_grad/Reshape_1Reshapegradients/Mul_9_grad/Sum_1gradients/Mul_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_9_grad/tuple/group_depsNoOp^gradients/Mul_9_grad/Reshape^gradients/Mul_9_grad/Reshape_1
?
-gradients/Mul_9_grad/tuple/control_dependencyIdentitygradients/Mul_9_grad/Reshape&^gradients/Mul_9_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_9_grad/Reshape*
T0
?
/gradients/Mul_9_grad/tuple/control_dependency_1Identitygradients/Mul_9_grad/Reshape_1&^gradients/Mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_9_grad/Reshape_1
C
gradients/Add_8_grad/ShapeShapeMul_8*
T0*
out_type0
E
gradients/Add_8_grad/Shape_1ShapeAdd_7*
T0*
out_type0
?
*gradients/Add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_8_grad/Shapegradients/Add_8_grad/Shape_1*
T0
?
gradients/Add_8_grad/SumSum/gradients/Add_9_grad/tuple/control_dependency_1*gradients/Add_8_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_8_grad/ReshapeReshapegradients/Add_8_grad/Sumgradients/Add_8_grad/Shape*
T0*
Tshape0
?
gradients/Add_8_grad/Sum_1Sum/gradients/Add_9_grad/tuple/control_dependency_1,gradients/Add_8_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_8_grad/Reshape_1Reshapegradients/Add_8_grad/Sum_1gradients/Add_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_8_grad/tuple/group_depsNoOp^gradients/Add_8_grad/Reshape^gradients/Add_8_grad/Reshape_1
?
-gradients/Add_8_grad/tuple/control_dependencyIdentitygradients/Add_8_grad/Reshape&^gradients/Add_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_8_grad/Reshape
?
/gradients/Add_8_grad/tuple/control_dependency_1Identitygradients/Add_8_grad/Reshape_1&^gradients/Add_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_8_grad/Reshape_1
K
gradients/Mul_8_grad/ShapeShapeemail_input_1*
T0*
out_type0
M
gradients/Mul_8_grad/Shape_1ShapePemail_1/read*
out_type0*
T0
?
*gradients/Mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_8_grad/Shapegradients/Mul_8_grad/Shape_1*
T0
f
gradients/Mul_8_grad/MulMul-gradients/Add_8_grad/tuple/control_dependencyPemail_1/read*
T0
?
gradients/Mul_8_grad/SumSumgradients/Mul_8_grad/Mul*gradients/Mul_8_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_8_grad/ReshapeReshapegradients/Mul_8_grad/Sumgradients/Mul_8_grad/Shape*
Tshape0*
T0
h
gradients/Mul_8_grad/Mul_1Mulemail_input_1-gradients/Add_8_grad/tuple/control_dependency*
T0
?
gradients/Mul_8_grad/Sum_1Sumgradients/Mul_8_grad/Mul_1,gradients/Mul_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_8_grad/Reshape_1Reshapegradients/Mul_8_grad/Sum_1gradients/Mul_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_8_grad/tuple/group_depsNoOp^gradients/Mul_8_grad/Reshape^gradients/Mul_8_grad/Reshape_1
?
-gradients/Mul_8_grad/tuple/control_dependencyIdentitygradients/Mul_8_grad/Reshape&^gradients/Mul_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_8_grad/Reshape
?
/gradients/Mul_8_grad/tuple/control_dependency_1Identitygradients/Mul_8_grad/Reshape_1&^gradients/Mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_8_grad/Reshape_1
C
gradients/Add_7_grad/ShapeShapeMul_7*
T0*
out_type0
G
gradients/Add_7_grad/Shape_1ShapeAdd_7/y*
T0*
out_type0
?
*gradients/Add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_7_grad/Shapegradients/Add_7_grad/Shape_1*
T0
?
gradients/Add_7_grad/SumSum/gradients/Add_8_grad/tuple/control_dependency_1*gradients/Add_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_7_grad/ReshapeReshapegradients/Add_7_grad/Sumgradients/Add_7_grad/Shape*
T0*
Tshape0
?
gradients/Add_7_grad/Sum_1Sum/gradients/Add_8_grad/tuple/control_dependency_1,gradients/Add_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
N
gradients/Mul_7_grad/ShapeShapelocation_input_1*
T0*
out_type0
P
gradients/Mul_7_grad/Shape_1ShapePlocation_1/read*
T0*
out_type0
?
*gradients/Mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_7_grad/Shapegradients/Mul_7_grad/Shape_1*
T0
i
gradients/Mul_7_grad/MulMul-gradients/Add_7_grad/tuple/control_dependencyPlocation_1/read*
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
k
gradients/Mul_7_grad/Mul_1Mullocation_input_1-gradients/Add_7_grad/tuple/control_dependency*
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
@
train/learning_rateConst*
valueB
 *
?#<*
dtype0
?
-train/update_Plocation_1/ApplyGradientDescentApplyGradientDescentPlocation_1train/learning_rate/gradients/Mul_7_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Plocation_1
?
*train/update_Pemail_1/ApplyGradientDescentApplyGradientDescentPemail_1train/learning_rate/gradients/Mul_8_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Pemail_1
?
)train/update_Pimei_1/ApplyGradientDescentApplyGradientDescentPimei_1train/learning_rate/gradients/Mul_9_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Pimei_1
?
+train/update_Pdevice_1/ApplyGradientDescentApplyGradientDescent	Pdevice_1train/learning_rate0gradients/Mul_10_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Pdevice_1
?
1train/update_Pserialnumber_1/ApplyGradientDescentApplyGradientDescentPserialnumber_1train/learning_rate0gradients/Mul_11_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@Pserialnumber_1
?
/train/update_Pmacaddress_1/ApplyGradientDescentApplyGradientDescentPmacaddress_1train/learning_rate0gradients/Mul_12_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@Pmacaddress_1
?
/train/update_Padvertiser_1/ApplyGradientDescentApplyGradientDescentPadvertiser_1train/learning_rate0gradients/Mul_13_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@Padvertiser_1
?
trainNoOp0^train/update_Padvertiser_1/ApplyGradientDescent,^train/update_Pdevice_1/ApplyGradientDescent+^train/update_Pemail_1/ApplyGradientDescent*^train/update_Pimei_1/ApplyGradientDescent.^train/update_Plocation_1/ApplyGradientDescent0^train/update_Pmacaddress_1/ApplyGradientDescent2^train/update_Pserialnumber_1/ApplyGradientDescent
?
initNoOp^Padvertiser/Assign^Padvertiser_1/Assign^Pdevice/Assign^Pdevice_1/Assign^Pemail/Assign^Pemail_1/Assign^Pimei/Assign^Pimei_1/Assign^Plocation/Assign^Plocation_1/Assign^Pmacaddress/Assign^Pmacaddress_1/Assign^Pserialnumber/Assign^Pserialnumber_1/Assign
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
?
save/SaveV2/tensor_namesConst*?
value?B?BPadvertiserBPadvertiser_1BPdeviceB	Pdevice_1BPemailBPemail_1BPimeiBPimei_1B	PlocationBPlocation_1BPmacaddressBPmacaddress_1BPserialnumberBPserialnumber_1*
dtype0
c
save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesPadvertiserPadvertiser_1Pdevice	Pdevice_1PemailPemail_1PimeiPimei_1	PlocationPlocation_1PmacaddressPmacaddress_1PserialnumberPserialnumber_1*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BPadvertiserBPadvertiser_1BPdeviceB	Pdevice_1BPemailBPemail_1BPimeiBPimei_1B	PlocationBPlocation_1BPmacaddressBPmacaddress_1BPserialnumberBPserialnumber_1*
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
?
save/AssignAssignPadvertisersave/RestoreV2*
use_locking(*
T0*
_class
loc:@Padvertiser*
validate_shape(
?
save/Assign_1AssignPadvertiser_1save/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@Padvertiser_1*
validate_shape(
?
save/Assign_2AssignPdevicesave/RestoreV2:2*
_class
loc:@Pdevice*
validate_shape(*
use_locking(*
T0
?
save/Assign_3Assign	Pdevice_1save/RestoreV2:3*
validate_shape(*
use_locking(*
T0*
_class
loc:@Pdevice_1
~
save/Assign_4AssignPemailsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Pemail*
validate_shape(
?
save/Assign_5AssignPemail_1save/RestoreV2:5*
_class
loc:@Pemail_1*
validate_shape(*
use_locking(*
T0
|
save/Assign_6AssignPimeisave/RestoreV2:6*
T0*
_class

loc:@Pimei*
validate_shape(*
use_locking(
?
save/Assign_7AssignPimei_1save/RestoreV2:7*
T0*
_class
loc:@Pimei_1*
validate_shape(*
use_locking(
?
save/Assign_8Assign	Plocationsave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Plocation*
validate_shape(
?
save/Assign_9AssignPlocation_1save/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Plocation_1*
validate_shape(
?
save/Assign_10AssignPmacaddresssave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Pmacaddress*
validate_shape(
?
save/Assign_11AssignPmacaddress_1save/RestoreV2:11*
use_locking(*
T0* 
_class
loc:@Pmacaddress_1*
validate_shape(
?
save/Assign_12AssignPserialnumbersave/RestoreV2:12*
validate_shape(*
use_locking(*
T0* 
_class
loc:@Pserialnumber
?
save/Assign_13AssignPserialnumber_1save/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@Pserialnumber_1*
validate_shape(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"?