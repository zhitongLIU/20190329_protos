all: user_service

user_service: users_service.proto
		grpc_tools_ruby_protoc -I . --ruby_out=../user_service_ruby_lib --grpc_out=../user_service_ruby_lib ./users_service.proto
