##target_tracking
gnome-terminal --window -e 'bash -c "roslaunch target_tracking target_tracking.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch uav_vision platform_detection.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun target_tracking ardrone_act_node; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch uav_vision platform_tracking.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch ped_traj_pred kalman_pred.launch; exec bash"' \
--tab -e 'bash -c "sleep 1; roslaunch takeoff ardrone_teleop.launch; exec bash"' \
--tab -e 'bash -c "sleep 1; rosrun takeoff key_borard_cd; exec bash"' \


