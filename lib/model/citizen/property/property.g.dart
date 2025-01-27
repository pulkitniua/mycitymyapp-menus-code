// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties()
  ..properties = (json['Properties'] as List<dynamic>?)
      ?.map((e) => Property.fromJson(e as Map<String, dynamic>))
      .toList()
  ..count = (json['count'] as num?)?.toInt();

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'Properties': instance.properties,
      'count': instance.count,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) => Property()
  ..id = json['id'] as String?
  ..propertyId = json['propertyId'] as String?
  ..surveyId = json['surveyId']
  ..linkedProperties = json['linkedProperties']
  ..tenantId = json['tenantId'] as String?
  ..accountId = json['accountId'] as String?
  ..oldPropertyId = json['oldPropertyId']
  ..status = json['status'] as String?
  ..address = json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>)
  ..acknowledgementNumber = json['acknowldgementNumber'] as String?
  ..propertyType = json['propertyType'] as String?
  ..ownershipCategory = json['ownershipCategory'] as String?
  ..owners = (json['owners'] as List<dynamic>?)
      ?.map((e) => Owner.fromJson(e as Map<String, dynamic>))
      .toList()
  ..institution = json['institution']
  ..creationReason = json['creationReason'] as String?
  ..usageCategory = json['usageCategory']
  ..noOfFloors = (json['noOfFloors'] as num?)?.toInt()
  ..landArea = (json['landArea'] as num?)?.toDouble()
  ..source = json['source'] as String?
  ..superBuiltUpArea = json['superBuiltUpArea']
  ..channel = json['channel'] as String?
  ..documents = (json['documents'] as List<dynamic>?)
      ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
      .toList()
  ..units = json['units']
  ..dueAmount = json['dueAmount']
  ..dueAmountYear = json['dueAmountYear']
  ..additionalDetails = json[''] == null
      ? null
      : PropertyAdditionalDetails.fromJson(json[''] as Map<String, dynamic>)
  ..auditDetails = json['additionalDetails'] == null
      ? null
      : AuditDetails.fromJson(json['additionalDetails'] as Map<String, dynamic>)
  ..workflow = json['workflow']
  ..alternateUpdated = json['alternateUpdated'] as bool?
  ..isOldDataEncryptionRequest = json['isOldDataEncryptionRequest'] as bool?;

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'id': instance.id,
      'propertyId': instance.propertyId,
      'surveyId': instance.surveyId,
      'linkedProperties': instance.linkedProperties,
      'tenantId': instance.tenantId,
      'accountId': instance.accountId,
      'oldPropertyId': instance.oldPropertyId,
      'status': instance.status,
      'address': instance.address,
      'acknowldgementNumber': instance.acknowledgementNumber,
      'propertyType': instance.propertyType,
      'ownershipCategory': instance.ownershipCategory,
      'owners': instance.owners,
      'institution': instance.institution,
      'creationReason': instance.creationReason,
      'usageCategory': instance.usageCategory,
      'noOfFloors': instance.noOfFloors,
      'landArea': instance.landArea,
      'source': instance.source,
      'superBuiltUpArea': instance.superBuiltUpArea,
      'channel': instance.channel,
      'documents': instance.documents,
      'units': instance.units,
      'dueAmount': instance.dueAmount,
      'dueAmountYear': instance.dueAmountYear,
      '': instance.additionalDetails,
      'additionalDetails': instance.auditDetails,
      'workflow': instance.workflow,
      'alternateUpdated': instance.alternateUpdated,
      'isOldDataEncryptionRequest': instance.isOldDataEncryptionRequest,
    };

PropertyAdditionalDetails _$PropertyAdditionalDetailsFromJson(
        Map<String, dynamic> json,) =>
    PropertyAdditionalDetails()
      ..uid = json['uid'] as String?
      ..basement1 = json['basement1']
      ..basement2 = json['basement2']
      ..builtUpArea = json['builtUpArea']
      ..electricity = json['electricity'] as String?
      ..inflammable = json['inflammable'] as bool?
      ..propertyType = json['propertyType'] == null
          ? null
          : PropertyType.fromJson(json['propertyType'] as Map<String, dynamic>)
      ..subusagetype = json['subusagetype']
      ..heightAbove36Feet = json['heightAbove36Feet'] as bool?
      ..subusagetypeofrentedarea = json['subusagetypeofrentedarea']
      ..isAnyPartOfThisFloorUnOccupied = json['isAnyPartOfThisFloorUnOccupied'];

Map<String, dynamic> _$PropertyAdditionalDetailsToJson(
        PropertyAdditionalDetails instance,) =>
    <String, dynamic>{
      'uid': instance.uid,
      'basement1': instance.basement1,
      'basement2': instance.basement2,
      'builtUpArea': instance.builtUpArea,
      'electricity': instance.electricity,
      'inflammable': instance.inflammable,
      'propertyType': instance.propertyType,
      'subusagetype': instance.subusagetype,
      'heightAbove36Feet': instance.heightAbove36Feet,
      'subusagetypeofrentedarea': instance.subusagetypeofrentedarea,
      'isAnyPartOfThisFloorUnOccupied': instance.isAnyPartOfThisFloorUnOccupied,
    };

PropertyType _$PropertyTypeFromJson(Map<String, dynamic> json) => PropertyType()
  ..code = json['code'] as String?
  ..i18NKey = json['i18nKey'] as String?;

Map<String, dynamic> _$PropertyTypeToJson(PropertyType instance) =>
    <String, dynamic>{
      'code': instance.code,
      'i18nKey': instance.i18NKey,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address()
  ..tenantId = json['tenantId'] as String?
  ..doorNo = json['doorNo'] as String?
  ..plotNo = json['plotNo']
  ..id = json['id'] as String?
  ..landmark = json['landmark']
  ..city = json['city'] as String?
  ..district = json['district']
  ..region = json['region']
  ..state = json['state']
  ..country = json['country']
  ..pinCode = json['pincode']
  ..buildingName = json['buildingName']
  ..street = json['street'] as String?
  ..locality = json['locality'] == null
      ? null
      : Locality.fromJson(json['locality'] as Map<String, dynamic>)
  ..geoLocation = json['geoLocation'] == null
      ? null
      : GeoLocation.fromJson(json['geoLocation'] as Map<String, dynamic>)
  ..additionalDetails = json['additionalDetails'];

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'tenantId': instance.tenantId,
      'doorNo': instance.doorNo,
      'plotNo': instance.plotNo,
      'id': instance.id,
      'landmark': instance.landmark,
      'city': instance.city,
      'district': instance.district,
      'region': instance.region,
      'state': instance.state,
      'country': instance.country,
      'pincode': instance.pinCode,
      'buildingName': instance.buildingName,
      'street': instance.street,
      'locality': instance.locality,
      'geoLocation': instance.geoLocation,
      'additionalDetails': instance.additionalDetails,
    };

GeoLocation _$GeoLocationFromJson(Map<String, dynamic> json) => GeoLocation()
  ..latitude = (json['latitude'] as num?)?.toDouble()
  ..longitude = (json['longitude'] as num?)?.toDouble();

Map<String, dynamic> _$GeoLocationToJson(GeoLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Locality _$LocalityFromJson(Map<String, dynamic> json) => Locality()
  ..code = json['code'] as String?
  ..name = json['name'] as String?
  ..label = json['label'] as String?
  ..latitude = json['latitude']
  ..longitude = json['longitude']
  ..area = json['area'] as String?
  ..children = json['children'] as List<dynamic>?
  ..materializedPath = json['materializedPath'];

Map<String, dynamic> _$LocalityToJson(Locality instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'label': instance.label,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'area': instance.area,
      'children': instance.children,
      'materializedPath': instance.materializedPath,
    };

AuditDetails _$AuditDetailsFromJson(Map<String, dynamic> json) => AuditDetails()
  ..createdBy = json['createdBy'] as String?
  ..lastModifiedBy = json['lastModifiedBy'] as String?
  ..createdTime = (json['createdTime'] as num?)?.toInt()
  ..lastModifiedTime = (json['lastModifiedTime'] as num?)?.toInt();

Map<String, dynamic> _$AuditDetailsToJson(AuditDetails instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'lastModifiedBy': instance.lastModifiedBy,
      'createdTime': instance.createdTime,
      'lastModifiedTime': instance.lastModifiedTime,
    };

Document _$DocumentFromJson(Map<String, dynamic> json) => Document()
  ..id = json['id'] as String?
  ..documentType = json['documentType'] as String?
  ..fileStoreId = json['fileStoreId'] as String?
  ..documentUid = json['documentUid']
  ..auditDetails = json['auditDetails']
  ..status = json['status'] as String?;

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'id': instance.id,
      'documentType': instance.documentType,
      'fileStoreId': instance.fileStoreId,
      'documentUid': instance.documentUid,
      'auditDetails': instance.auditDetails,
      'status': instance.status,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner()
  ..id = json['id']
  ..uuid = json['uuid'] as String?
  ..userName = json['userName'] as String?
  ..password = json['password']
  ..salutation = json['salutation']
  ..name = json['name'] as String?
  ..gender = json['gender'] as String?
  ..mobileNumber = json['mobileNumber'] as String?
  ..emailId = json['emailId'] as String?
  ..altContactNumber = json['altContactNumber']
  ..pan = json['pan']
  ..aadhaarNumber = json['aadhaarNumber']
  ..permanentAddress = json['permanentAddress'] as String?
  ..permanentCity = json['permanentCity']
  ..permanentPinCode = json['permanentPinCode']
  ..correspondenceCity = json['correspondenceCity']
  ..correspondencePinCode = json['correspondencePinCode']
  ..correspondenceAddress = json['correspondenceAddress']
  ..active = json['active'] as bool?
  ..dob = json['dob']
  ..pwdExpiryDate = (json['pwdExpiryDate'] as num?)?.toInt()
  ..locale = json['locale']
  ..type = json['type'] as String?
  ..signature = json['signature']
  ..accountLocked = json['accountLocked'] as bool?
  ..roles = (json['roles'] as List<dynamic>?)
      ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
      .toList()
  ..fatherOrHusbandName = json['fatherOrHusbandName'] as String?
  ..bloodGroup = json['bloodGroup']
  ..identificationMark = json['identificationMark']
  ..photo = json['photo']
  ..createdBy = json['createdBy'] as String?
  ..createdDate = (json['createdDate'] as num?)?.toInt()
  ..lastModifiedBy = json['lastModifiedBy'] as String?
  ..lastModifiedDate = (json['lastModifiedDate'] as num?)?.toInt()
  ..tenantId = json['tenantId'] as String?
  ..alternateMobileNumber = json['alternatemobilenumber']
  ..ownerInfoUuid = json['ownerInfoUuid'] as String?
  ..isPrimaryOwner = json['isPrimaryOwner']
  ..ownerShipPercentage = json['ownerShipPercentage']
  ..ownerType = json['ownerType'] as String?
  ..institutionId = json['institutionId']
  ..status = json['status'] as String?
  ..documents = (json['documents'] as List<dynamic>?)
      ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
      .toList()
  ..additionalDetails = json['additionalDetails'] == null
      ? null
      : OwnerAdditionalDetails.fromJson(
          json['additionalDetails'] as Map<String, dynamic>,)
  ..relationship = json['relationship'] as String?;

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'userName': instance.userName,
      'password': instance.password,
      'salutation': instance.salutation,
      'name': instance.name,
      'gender': instance.gender,
      'mobileNumber': instance.mobileNumber,
      'emailId': instance.emailId,
      'altContactNumber': instance.altContactNumber,
      'pan': instance.pan,
      'aadhaarNumber': instance.aadhaarNumber,
      'permanentAddress': instance.permanentAddress,
      'permanentCity': instance.permanentCity,
      'permanentPinCode': instance.permanentPinCode,
      'correspondenceCity': instance.correspondenceCity,
      'correspondencePinCode': instance.correspondencePinCode,
      'correspondenceAddress': instance.correspondenceAddress,
      'active': instance.active,
      'dob': instance.dob,
      'pwdExpiryDate': instance.pwdExpiryDate,
      'locale': instance.locale,
      'type': instance.type,
      'signature': instance.signature,
      'accountLocked': instance.accountLocked,
      'roles': instance.roles,
      'fatherOrHusbandName': instance.fatherOrHusbandName,
      'bloodGroup': instance.bloodGroup,
      'identificationMark': instance.identificationMark,
      'photo': instance.photo,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'tenantId': instance.tenantId,
      'alternatemobilenumber': instance.alternateMobileNumber,
      'ownerInfoUuid': instance.ownerInfoUuid,
      'isPrimaryOwner': instance.isPrimaryOwner,
      'ownerShipPercentage': instance.ownerShipPercentage,
      'ownerType': instance.ownerType,
      'institutionId': instance.institutionId,
      'status': instance.status,
      'documents': instance.documents,
      'additionalDetails': instance.additionalDetails,
      'relationship': instance.relationship,
    };

OwnerAdditionalDetails _$OwnerAdditionalDetailsFromJson(
        Map<String, dynamic> json,) =>
    OwnerAdditionalDetails()
      ..ownerName = json['ownerName'] as String?
      ..ownerSequence = (json['ownerSequence'] as num?)?.toInt();

Map<String, dynamic> _$OwnerAdditionalDetailsToJson(
        OwnerAdditionalDetails instance,) =>
    <String, dynamic>{
      'ownerName': instance.ownerName,
      'ownerSequence': instance.ownerSequence,
    };

Role _$RoleFromJson(Map<String, dynamic> json) => Role()
  ..id = json['id']
  ..name = json['name'] as String?
  ..code = json['code'] as String?
  ..tenantId = json['tenantId'] as String?;

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'tenantId': instance.tenantId,
    };
