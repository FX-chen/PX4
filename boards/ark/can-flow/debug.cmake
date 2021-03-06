include (${CMAKE_CURRENT_LIST_DIR}/uavcan_board_identity)

px4_add_board(
	PLATFORM nuttx
	TOOLCHAIN arm-none-eabi
	ARCHITECTURE cortex-m4
	CONSTRAINED_MEMORY
	ROMFSROOT cannode
	UAVCAN_INTERFACES 1
	DRIVERS
		bootloaders
		distance_sensor/broadcom/afbrs50
		imu/bosch/bmi088
		imu/invensense/icm42688p
		optical_flow/paw3902
		uavcannode
	MODULES
		#ekf2
		load_mon
		#sensors
	SYSTEMCMDS
		param
		perf
		reboot
		system_time
		top
		#topic_listener
		uorb
		ver
		work_queue
)
