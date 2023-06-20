# Mappings

## 使用例
```
Mappings:
  RegionMap:
    ap-northeast-1:
      AZ: ap-northeast-1c
      ImageId: ami-0b51fe1c0254d8fc9
    ap-northeast-3:
      AZ: ap-northeast-3c
      ImageId: ami-0dd52e19927b8a66f

Conditions:
  IsTokyoRegion: !Equals
    - !Ref AWS::Region
    - "ap-northeast-1"
  IsOsakaRegion: !Equals
    - !Ref AWS::Region
    - "ap-northeast-3"

Resources:
  EC2InstanceTokyo:
    Condition: IsTokyoRegion
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !FindInMap [RegionMap, !Ref "AWS::Region", ImageId]
      AvailabilityZone: !FindInMap [RegionMap, !Ref "AWS::Region", AZ]
      〜略〜

  EC2InstanceOsaka:
    Condition: IsOsakaRegion
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !FindInMap [RegionMap, !Ref "AWS::Region", ImageId]
      AvailabilityZone: !FindInMap [RegionMap, !Ref "AWS::Region", AZ]
      〜略〜
```
