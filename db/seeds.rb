# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
RestObject.delete_all
RestResource.delete_all
RestResourceParam.delete_all
RestDatatype.delete_all

context = RestObject.create(:name => 'Context', :description => 'Customer data')
RestResource.create(:name=> 'GET Contexts', :description => 'all available contexts for user', :example => 'https://www.effacts.com/effacts/basic/api/Contexts', :rest_object_id => context.id, :html_method => 'GET')

subject_role = RestObject.create(:name => 'SubjectRole', :description => '')
RestResource.create(:name=> 'GET :contextId/SubjectRoles', :description => 'all available roles', :example => 'https://www.effacts.com/effacts/basic/api/2/SubjectRoles', :rest_object_id => subject_role.id, :html_method => 'GET')

RestResource.create(:name=> 'GET :contextId/SubjectRoles/:subjectRoleId', :description => 'Returns a role of specific Id', :example => 'https://www.effacts.com/effacts/basic/api/2/SubjectRoles/1', :rest_object_id => subject_role.id, :html_method => 'GET')

RestResource.create(:name=> 'GET :contextId/SubjectRoles/:subjectRoleId/Subjects', :description => 'Returns a all subjects of a specific role', :example => 'https://www.effacts.com/effacts/basic/api/2/SubjectRoles/1/Subjects', :rest_object_id => subject_role.id, :html_method => 'GET')

subject = RestObject.create(:name => 'Subject', :description => '')
subjectSearch = RestResource.create(:name=> 'GET :contextId/Subjects', :description => 'Search in subjects', :example => 'https://www.effacts.com/effacts/basic/api/2/Subjects/?s=amsterdam&role=1', :rest_object_id => subject.id, :html_method => 'GET')
RestResourceParam.create(:name => 's', :description => 'search string', :rest_resource_id => subjectSearch.id)
RestResourceParam.create(:name => 'role', :description => 'subjectRole id', :optional => 'true', :rest_resource_id => subjectSearch.id)
subjectRead = RestResource.create(:name=> 'GET :contextId/Subjects/:subjectId', :description => 'Get a specific subject', :example => 'https://www.effacts.com/effacts/basic/api/2/Subjects/1', :rest_object_id => subject.id, :html_method => 'GET')
subjectUpdate = RestResource.create(:name=> 'PUT :contextId/Subjects/:subjectId', :description => 'Update a existing subject', :example => 'https://www.effacts.com/effacts/basic/api/2/Subjects/1', :rest_object_id => subject.id, :html_method => 'PUT', :show_data_types => 'true')

subjectFieldSet = RestResourceParam.create(:name => 'fields[:fieldname]=value', :description => 'search string', :rest_resource_id => subjectUpdate.id)
multiSubjectFieldSet = RestResourceParam.create(:name => 'fields[:fieldname][]=value', :description => 'search string', :rest_resource_id => subjectUpdate.id)
singleField = RestResourceParam.create(:name => ':fieldname=value', :description => 'search string', :rest_resource_id => subjectUpdate.id)
multiSingleField = RestResourceParam.create(:name => ':fieldname[]=value', :description => 'search string', :rest_resource_id => subjectUpdate.id)

subjectFieldSet = RestResourceParam.create(:name => 'fields[:fieldname]=:value', :description => 'search string', :rest_resource_id => subjectRead.id)
multiSubjectFieldSet = RestResourceParam.create(:name => 'fields[:fieldname][]=:value', :description => 'search string', :rest_resource_id => subjectRead.id)
singleField = RestResourceParam.create(:name => ':fieldname=:value', :description => 'search string', :rest_resource_id => subjectRead.id)
multiSingleField = RestResourceParam.create(:name => ':fieldname[]=:value', :description => 'search string', :rest_resource_id => subjectRead.id)


RestDatatype.create(:name => 'Text', :example => 'This is a text', :description => 'max value: 255 characters')
RestDatatype.create(:name => 'TextArea', :example => 'This is a textarea')
RestDatatype.create(:name => 'Decimal', :example => '0.42')
RestDatatype.create(:name => 'Number', :example => '42')
RestDatatype.create(:name => 'Currency', :example => 'EUR40.20')
RestDatatype.create(:name => 'Boolean', :example => 'true')
RestDatatype.create(:name => 'Date', :example => '2011-12-31', :format => 'yyyy-MM-dd')




