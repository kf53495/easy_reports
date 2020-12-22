
# classroomsテーブル
|カラム名|カラムの型|オプション|
| :-: | :-: | :-: |
|name|string|null: false|

## Association
- has_many teachers
- has_many students


# teachersテーブル
|カラム名|カラムの型|オプション|
| :-: | :-: | :-: |
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|subjects|string|-|
|profile|text|-|

## Association
- belongs_to classroom
- has_many reports




# studentテーブル
|カラム名|カラムの型|オプション|
| :-: | :-: | :-: |
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|grade_id|references|foreign_key: true
|gender_id|references|foreign_key: true

## Association
-has_many reports


# reportsテーブル
|カラム名|カラムの型|オプション|
| :-: | :-: | :-: |
|date|date|null: false|
|day|string|null: false|
|time_id|integer|null: false|
|lesson_type_id|integer|null: false|
|attendance_status_id|string|null: false|
|contact|string|null: false|
|homework_status|string|null: false|
|quiz|string|-|
|quiz_result|string|-|
|quiz_correspondance|string|-|
|study_material|未定||
|lesson_contents|text|null: false|
|lesson_status|未定|null: false|
|retry_time|text|null: false|
|homework|text|null: false|
|teacher|string|null: false|自動入力|

## Association
- belongs_to teacher
- belongs_to student