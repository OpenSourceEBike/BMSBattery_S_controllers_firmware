
import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.io.*;
import java.awt.Desktop;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.text.JTextComponent;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.ListSelectionModel;
import javax.swing.JLabel;
import javax.swing.AbstractAction;
import java.awt.event.ActionEvent;
import javax.swing.Action;
import java.awt.event.ActionListener;
import java.awt.GridLayout;
import java.awt.Font;
import java.awt.Color;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.swing.SwingConstants;
import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.ButtonGroup;
import javax.swing.JList;
import javax.swing.JScrollPane;
import java.awt.Dimension;
import java.util.List;
import java.util.ArrayList;
import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.DefaultListModel;
import javax.swing.event.ListDataListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.nio.file.Paths;
import java.util.Arrays;

public class OSEC extends JFrame {
	
	public class FileContainer {

		public FileContainer(File file) {
			this.file = file;
		}
		public File file;
		@Override
		public String toString(){
			return file.getName();
		}
	}

	private JPanel contentPane;
	private JTextField txtPasTimeout;
	private JTextField txtWheelCircumference;
	private JTextField txtNumberOfPas;
	private JLabel lblSpeedLimit;
	private JTextField txtSpeedlimit;
	private JLabel lblSupportFactor;
	private JTextField txtSupportfactor;
	private JLabel lblThrottleMin;
	private JTextField txtThrottlemin;
	private JLabel lblThrottleMax;
	private JTextField txtThrottlemax;
	private JButton lblHttpsopensourceebikefirmwarebitbucketio;
	private JLabel lblOpenSourceFirmware;
	private JButton btnWriteConfiguration;
	private JTextField txtMaxbatterycurrent;
	private JTextField txtUndervoltage;
	private final ButtonGroup Ridingmode = new ButtonGroup();
	private JTextField txtMotor_specific_angle;
	private JTextField txtBatteryCurcala;
	private JLabel lblDiplayType;
	private final ButtonGroup displayButtonGroup = new ButtonGroup();
	private final ButtonGroup MotorSpeed = new ButtonGroup();
	private final ButtonGroup Speedsensor = new ButtonGroup();
	private final ButtonGroup PASdirection = new ButtonGroup();
	private final ButtonGroup Regen = new ButtonGroup();
	private JTextField Assist_Level_1;
	private JTextField Assist_Level_2;
	private JTextField Assist_Level_3;
	private JTextField Assist_Level_4;
	private JLabel lblAssistLevel_3;
	private JLabel lblAssistLevel_4;
	private JTextField Assist_Level_5;
	private JTextField Morse_Time_1;
	private JTextField Morse_Time_2;
	private JTextField Morse_Time_3;
	private JTextField ramp_end;
	private JTextField p_factor;
	private JTextField i_factor;
	private JTextField GearRatio;
	private JTextField txtMaxregencurrent;
	private JRadioButton rdbtnNormal;
	private JRadioButton rdbtnHigh;
	private JLabel lblSpeedSensor;
	private JRadioButton rdbtnInternal;
	private JRadioButton rdbtnExternal;
	private JTextField CellsNumber;
	private JTextField PAS_threshold;
	private JTextField txtMaxphasecurrent;
	private JTextField TempCalA;
	private JTextField TempCalB;
	private JRadioButton rdbtnBluOsecDisplay;
	private JRadioButton rdbtnRight;
	private JRadioButton rdbtnLeft;
	private JRadioButton rdbtnRegen;
	private JRadioButton rdbtnRegenDigital;
	private JRadioButton rdbtnKingmeterJlcd;
	private JRadioButton rdbtnKtlcd;
	private JRadioButton rdbtnDiganostics;
	private JRadioButton rdbtnTorquesimulation;
	private JRadioButton rdbtnThrottle;
	private JRadioButton rdbtnTorqueSensor;
	private JRadioButton rdbtnThrottlePas;
	private JRadioButton rdbtnNone_1;
	private JRadioButton rdbtnNone;
	
	private File settingsDir;
	private File lastSettingsFile=null;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {

		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					OSEC frame = new OSEC();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public void loadSettings(File f) throws IOException {

		BufferedReader in = new BufferedReader(new FileReader(f));
		txtNumberOfPas.setText(in.readLine());
		txtSpeedlimit.setText(in.readLine());
		txtPasTimeout.setText(in.readLine());
		txtWheelCircumference.setText(in.readLine());
		txtSupportfactor.setText(in.readLine());
		txtThrottlemin.setText(in.readLine());
		txtThrottlemax.setText(in.readLine());
		txtUndervoltage.setText(in.readLine());
		txtMaxbatterycurrent.setText(in.readLine());
		txtMaxphasecurrent.setText(in.readLine());
		txtMaxregencurrent.setText(in.readLine());
		txtMotor_specific_angle.setText(in.readLine());
		txtBatteryCurcala.setText(in.readLine());
		TempCalA.setText(in.readLine());
		TempCalB.setText(in.readLine());
		Assist_Level_1.setText(in.readLine());
		Assist_Level_2.setText(in.readLine());
		Assist_Level_3.setText(in.readLine());
		Assist_Level_4.setText(in.readLine());
		Assist_Level_5.setText(in.readLine());
		Morse_Time_1.setText(in.readLine());
		Morse_Time_2.setText(in.readLine());
		Morse_Time_3.setText(in.readLine());
		ramp_end.setText(in.readLine());
		p_factor.setText(in.readLine());
		i_factor.setText(in.readLine());
		GearRatio.setText(in.readLine());
		CellsNumber.setText(in.readLine());
		PAS_threshold.setText(in.readLine());

		rdbtnTorqueSensor.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnThrottlePas.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnThrottle.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnTorquesimulation.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnHigh.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnNormal.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnKtlcd.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnKingmeterJlcd.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnInternal.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnExternal.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnDiganostics.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnRegenDigital.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnRegen.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnLeft.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnRight.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnBluOsecDisplay.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnNone_1.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnNone.setSelected(Boolean.parseBoolean(in.readLine()));
		
		in.close();
	}

	/**
	 * Create the frame.
	 *
	 * @throws IOException
	 */
	public OSEC() throws IOException {

		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 960, 720);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel footnote = new JLabel("*) manual adjustments needed in config.h");
		footnote.setBounds(600, 650, 320, 25);
		contentPane.add(footnote);

		JLabel lblTollesProgramm = new JLabel("C#ROME-B Parameter Configurator");
		lblTollesProgramm.setHorizontalAlignment(SwingConstants.CENTER);
		lblTollesProgramm.setForeground(Color.BLUE);
		lblTollesProgramm.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblTollesProgramm.setBounds(114, 11, 326, 34);
		contentPane.add(lblTollesProgramm);

		settingsDir = new File(Paths.get(".").toAbsolutePath().normalize().toString());
		while (!Arrays.asList(settingsDir.list()).contains("experimental settings")) {
			settingsDir = settingsDir.getParentFile();
		}
		settingsDir = new File(settingsDir.getAbsolutePath() + File.separator + "experimental settings");

		DefaultListModel settingsFilesModel = new DefaultListModel();
		for (File file : settingsDir.listFiles()) {
			settingsFilesModel.addElement(new FileContainer(file));
			
			if (lastSettingsFile == null){
				lastSettingsFile=file;
			}else{
				if (file.getName().compareTo(lastSettingsFile.getName())>0){
					lastSettingsFile=file;
				}
			}
			
		}

		JList settingsList = new JList(settingsFilesModel);
		settingsList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		settingsList.setLayoutOrientation(JList.VERTICAL);
		settingsList.setVisibleRowCount(-1);

		JScrollPane listScroller = new JScrollPane(settingsList);
		listScroller.setPreferredSize(new Dimension(280, 280));
		listScroller.setBounds(600, 90, 320, 280);
		contentPane.add(listScroller);

		settingsList.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				try {
					settingsList.getSelectedValue();
					loadSettings(((FileContainer) settingsList.getSelectedValue()).file);
					settingsList.clearSelection();
				} catch (IOException ex) {
					Logger.getLogger(OSEC.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		});

		JLabel lblPasTimeout = new JLabel("PAS Timeout");
		lblPasTimeout.setBounds(15, 146, 101, 14);
		contentPane.add(lblPasTimeout);

		txtPasTimeout = new JTextField();
		txtPasTimeout.setText("3125");
		txtPasTimeout.setBounds(150, 144, 86, 20);
		contentPane.add(txtPasTimeout);
		txtPasTimeout.setColumns(10);

		JLabel lblWheelCircumference = new JLabel("Wheel circumference");
		lblWheelCircumference.setBounds(15, 119, 131, 14);
		contentPane.add(lblWheelCircumference);

		txtWheelCircumference = new JTextField();
		txtWheelCircumference.setText("2000");
		txtWheelCircumference.setBounds(150, 117, 86, 20);
		contentPane.add(txtWheelCircumference);
		txtWheelCircumference.setColumns(10);

		JLabel lblNumberOfPas = new JLabel("No. of PAS Magnets");
		lblNumberOfPas.setBounds(15, 92, 141, 14);
		contentPane.add(lblNumberOfPas);

		txtNumberOfPas = new JTextField();
		txtNumberOfPas.setText("16");
		txtNumberOfPas.setBounds(150, 87, 86, 20);
		contentPane.add(txtNumberOfPas);
		txtNumberOfPas.setColumns(10);

		lblSpeedLimit = new JLabel("Speed Limit (km/h)");
		lblSpeedLimit.setBounds(15, 173, 135, 14);
		contentPane.add(lblSpeedLimit);

		txtSpeedlimit = new JTextField();
		txtSpeedlimit.setText("25");
		txtSpeedlimit.setBounds(150, 171, 86, 20);
		contentPane.add(txtSpeedlimit);
		txtSpeedlimit.setColumns(10);

		lblSupportFactor = new JLabel("Assist factor");
		lblSupportFactor.setBounds(383, 227, 88, 14);
		contentPane.add(lblSupportFactor);

		txtSupportfactor = new JTextField();
		txtSupportfactor.setText("64");
		txtSupportfactor.setBounds(476, 224, 86, 20);
		contentPane.add(txtSupportfactor);
		txtSupportfactor.setColumns(10);

		lblThrottleMin = new JLabel("Throttle min");
		lblThrottleMin.setBounds(15, 201, 78, 14);
		contentPane.add(lblThrottleMin);

		txtThrottlemin = new JTextField();
		txtThrottlemin.setText("43");
		txtThrottlemin.setBounds(150, 198, 86, 20);
		contentPane.add(txtThrottlemin);
		txtThrottlemin.setColumns(10);

		lblThrottleMax = new JLabel("Throttle max");
		lblThrottleMax.setBounds(15, 224, 78, 14);
		contentPane.add(lblThrottleMax);

		txtThrottlemax = new JTextField();
		txtThrottlemax.setText("182");
		txtThrottlemax.setBounds(150, 221, 86, 20);
		contentPane.add(txtThrottlemax);
		txtThrottlemax.setColumns(10);

		txtMotor_specific_angle = new JTextField();
		txtMotor_specific_angle.setText("214");
		txtMotor_specific_angle.setBounds(150, 336, 86, 20);
		contentPane.add(txtMotor_specific_angle);
		txtMotor_specific_angle.setColumns(10);

		JLabel lblMotorSpecificAngle = new JLabel("Motor specific angle");
		lblMotorSpecificAngle.setBounds(15, 339, 121, 14);
		contentPane.add(lblMotorSpecificAngle);

		txtBatteryCurcala = new JTextField();
		txtBatteryCurcala.setText("10");
		txtBatteryCurcala.setBounds(150, 359, 86, 20);
		contentPane.add(txtBatteryCurcala);
		txtBatteryCurcala.setColumns(10);

		JLabel lblBatteryCurrentCal = new JLabel("Battery Current cal a");
		lblBatteryCurrentCal.setBounds(15, 362, 121, 14);
		contentPane.add(lblBatteryCurrentCal);

		JLabel lblTemperatureCalA = new JLabel("Temperature cal a");
		lblTemperatureCalA.setBounds(15, 384, 121, 14);
		contentPane.add(lblTemperatureCalA);

		TempCalA = new JTextField();
		TempCalA.setText("1.6");
		TempCalA.setColumns(10);
		TempCalA.setBounds(150, 381, 86, 20);
		contentPane.add(TempCalA);

		TempCalB = new JTextField();
		TempCalB.setText("110.4");
		TempCalB.setColumns(10);
		TempCalB.setBounds(150, 403, 86, 20);
		contentPane.add(TempCalB);

		JLabel lblTemperatureCalB = new JLabel("Temperature cal b");
		lblTemperatureCalB.setBounds(15, 406, 121, 14);
		contentPane.add(lblTemperatureCalB);

		JLabel lblAssistLevel = new JLabel("Assist Level 1");
		lblAssistLevel.setBounds(383, 92, 88, 14);
		contentPane.add(lblAssistLevel);

		Assist_Level_1 = new JTextField();
		Assist_Level_1.setText("20");
		Assist_Level_1.setColumns(10);
		Assist_Level_1.setBounds(476, 89, 86, 20);
		contentPane.add(Assist_Level_1);

		JLabel lblAssistLevel_1 = new JLabel("Assist Level 2");
		lblAssistLevel_1.setBounds(383, 119, 86, 14);
		contentPane.add(lblAssistLevel_1);

		Assist_Level_2 = new JTextField();
		Assist_Level_2.setText("40");
		Assist_Level_2.setColumns(10);
		Assist_Level_2.setBounds(476, 116, 86, 20);
		contentPane.add(Assist_Level_2);

		JLabel lblAssistLevel_2 = new JLabel("Assist Level 3");
		lblAssistLevel_2.setBounds(383, 146, 86, 14);
		contentPane.add(lblAssistLevel_2);

		Assist_Level_3 = new JTextField();
		Assist_Level_3.setText("60");
		Assist_Level_3.setColumns(10);
		Assist_Level_3.setBounds(476, 143, 86, 20);
		contentPane.add(Assist_Level_3);

		Assist_Level_4 = new JTextField();
		Assist_Level_4.setText("80");
		Assist_Level_4.setColumns(10);
		Assist_Level_4.setBounds(476, 174, 86, 20);
		contentPane.add(Assist_Level_4);

		lblAssistLevel_3 = new JLabel("Assist Level 4");
		lblAssistLevel_3.setBounds(383, 177, 86, 14);
		contentPane.add(lblAssistLevel_3);

		lblAssistLevel_4 = new JLabel("Assist Level 5");
		lblAssistLevel_4.setBounds(383, 201, 86, 14);
		contentPane.add(lblAssistLevel_4);

		Assist_Level_5 = new JTextField();
		Assist_Level_5.setText("100");
		Assist_Level_5.setColumns(10);
		Assist_Level_5.setBounds(476, 198, 86, 20);
		contentPane.add(Assist_Level_5);

		JList list = new JList();
		list.setBounds(441, 177, 1, 1);
		contentPane.add(list);

		JLabel lblMorsetime = new JLabel("Morse-time 1");
		lblMorsetime.setBounds(383, 254, 86, 14);
		contentPane.add(lblMorsetime);

		Morse_Time_1 = new JTextField();
		Morse_Time_1.setText("50");
		Morse_Time_1.setColumns(10);
		Morse_Time_1.setBounds(476, 251, 86, 20);
		contentPane.add(Morse_Time_1);

		JLabel lblMorsetime_1 = new JLabel("Morse-time 2");
		lblMorsetime_1.setBounds(383, 282, 86, 14);
		contentPane.add(lblMorsetime_1);

		Morse_Time_2 = new JTextField();
		Morse_Time_2.setText("50");
		Morse_Time_2.setColumns(10);
		Morse_Time_2.setBounds(476, 279, 86, 20);
		contentPane.add(Morse_Time_2);

		JLabel lblMorsetime_2 = new JLabel("Morse-time 3");
		lblMorsetime_2.setBounds(383, 310, 88, 14);
		contentPane.add(lblMorsetime_2);

		Morse_Time_3 = new JTextField();
		Morse_Time_3.setText("50");
		Morse_Time_3.setColumns(10);
		Morse_Time_3.setBounds(476, 307, 86, 20);
		contentPane.add(Morse_Time_3);

		lblHttpsopensourceebikefirmwarebitbucketio = new JButton("https://opensourceebikefirmware.bitbucket.io/");
		lblHttpsopensourceebikefirmwarebitbucketio.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if (Desktop.isDesktopSupported()) {
					try {
						try {
							Desktop.getDesktop().browse(new URI("https://opensourceebikefirmware.bitbucket.io/"));
						} catch (URISyntaxException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					} catch (IOException e) {
						/* TODO: error handling */ }
				} else {
					/* TODO: error handling */ }

			}
		});
		lblHttpsopensourceebikefirmwarebitbucketio.setForeground(Color.BLUE);
		lblHttpsopensourceebikefirmwarebitbucketio.setBounds(600, 20, 320, 29);
		contentPane.add(lblHttpsopensourceebikefirmwarebitbucketio);

		lblOpenSourceFirmware = new JLabel("Open Source Firmware for E-Bike Controller");
		lblOpenSourceFirmware.setHorizontalAlignment(SwingConstants.CENTER);
		lblOpenSourceFirmware.setFont(new Font("Tahoma", Font.PLAIN, 11));
		lblOpenSourceFirmware.setForeground(Color.BLUE);
		lblOpenSourceFirmware.setBounds(154, 42, 255, 14);
		contentPane.add(lblOpenSourceFirmware);

		txtMaxbatterycurrent = new JTextField();
		txtMaxbatterycurrent.setText("372");
		txtMaxbatterycurrent.setBounds(150, 270, 86, 20);
		contentPane.add(txtMaxbatterycurrent);
		txtMaxbatterycurrent.setColumns(10);

		JLabel lblBatteryCurrentMax = new JLabel("Battery Current max");
		lblBatteryCurrentMax.setBounds(15, 273, 131, 14);
		contentPane.add(lblBatteryCurrentMax);

		JLabel lblRegenCurrentMax = new JLabel("Regen Current max");
		lblRegenCurrentMax.setBounds(15, 250, 131, 14);
		contentPane.add(lblRegenCurrentMax);

		JLabel lblPhaseCurrentMax = new JLabel("Phase Current max");
		lblPhaseCurrentMax.setBounds(15, 295, 131, 14);
		contentPane.add(lblPhaseCurrentMax);

		txtMaxphasecurrent = new JTextField();
		txtMaxphasecurrent.setText("372");
		txtMaxphasecurrent.setColumns(10);
		txtMaxphasecurrent.setBounds(150, 292, 86, 20);
		contentPane.add(txtMaxphasecurrent);

		txtMaxregencurrent = new JTextField();
		txtMaxregencurrent.setText("282");
		txtMaxregencurrent.setColumns(10);
		txtMaxregencurrent.setBounds(150, 247, 86, 20);
		contentPane.add(txtMaxregencurrent);

		txtUndervoltage = new JTextField();
		txtUndervoltage.setText("127");
		txtUndervoltage.setBounds(150, 313, 86, 20);
		contentPane.add(txtUndervoltage);
		txtUndervoltage.setColumns(10);

		JLabel lblRampEnd = new JLabel("Ramp end");
		lblRampEnd.setBounds(383, 338, 67, 14);
		contentPane.add(lblRampEnd);

		ramp_end = new JTextField();
		ramp_end.setText("977");
		ramp_end.setColumns(10);
		ramp_end.setBounds(476, 335, 86, 20);
		contentPane.add(ramp_end);

		JLabel lblUndervoltageLimit = new JLabel("Undervoltage limit");
		lblUndervoltageLimit.setBounds(15, 316, 121, 14);
		contentPane.add(lblUndervoltageLimit);

		JLabel lblPfactor = new JLabel("Gain P");
		lblPfactor.setBounds(383, 366, 67, 14);
		contentPane.add(lblPfactor);

		p_factor = new JTextField();
		p_factor.setText("0.5");
		p_factor.setColumns(10);
		p_factor.setBounds(476, 363, 86, 20);
		contentPane.add(p_factor);

		JLabel lblIfactor = new JLabel("Gain I");
		lblIfactor.setBounds(383, 393, 67, 14);
		contentPane.add(lblIfactor);

		i_factor = new JTextField();
		i_factor.setText("0.2");
		i_factor.setColumns(10);
		i_factor.setBounds(476, 390, 86, 20);
		contentPane.add(i_factor);

		JLabel lblGearRatio = new JLabel("Gear Ratio");
		lblGearRatio.setBounds(15, 427, 131, 14);
		contentPane.add(lblGearRatio);

		GearRatio = new JTextField();
		GearRatio.setText("64");
		GearRatio.setColumns(10);
		GearRatio.setBounds(150, 424, 86, 20);
		contentPane.add(GearRatio);

		JLabel lblNumberSerialCells = new JLabel("Serial cells");
		lblNumberSerialCells.setBounds(384, 421, 86, 14);
		contentPane.add(lblNumberSerialCells);

		CellsNumber = new JTextField();
		CellsNumber.setText("10");
		CellsNumber.setColumns(10);
		CellsNumber.setBounds(477, 418, 86, 20);
		contentPane.add(CellsNumber);
		
		
		JLabel lblRideMode = new JLabel("Ride Mode");
		lblRideMode.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblRideMode.setBounds(136, 490, 86, 20);
		contentPane.add(lblRideMode);

		rdbtnThrottle = new JRadioButton("Throttle");
		Ridingmode.add(rdbtnThrottle);
		rdbtnThrottle.setBounds(136, 515, 109, 20);
		contentPane.add(rdbtnThrottle);

		rdbtnThrottlePas = new JRadioButton("Throttle and PAS");
		Ridingmode.add(rdbtnThrottlePas);
		rdbtnThrottlePas.setBounds(136, 535, 131, 20);
		contentPane.add(rdbtnThrottlePas);

		rdbtnTorqueSensor = new JRadioButton("Torquesensor");
		rdbtnTorqueSensor.setSelected(true);
		Ridingmode.add(rdbtnTorqueSensor);
		rdbtnTorqueSensor.setBounds(136, 555, 131, 20);
		contentPane.add(rdbtnTorqueSensor);

		rdbtnTorquesimulation = new JRadioButton("Torque-Simulation");
		rdbtnTorquesimulation.setSelected(true);
		Ridingmode.add(rdbtnTorquesimulation);
		rdbtnTorquesimulation.setBounds(136, 575, 134, 20);
		contentPane.add(rdbtnTorquesimulation);


		JLabel lblMotorSpeed = new JLabel("Motor Speed");
		lblMotorSpeed.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblMotorSpeed.setBounds(276, 490, 86, 20);
		contentPane.add(lblMotorSpeed);

		rdbtnNormal = new JRadioButton("Normal");
		rdbtnNormal.setSelected(true);
		MotorSpeed.add(rdbtnNormal);
		rdbtnNormal.setBounds(276, 515, 101, 20);
		contentPane.add(rdbtnNormal);

		rdbtnHigh = new JRadioButton("High");
		MotorSpeed.add(rdbtnHigh);
		rdbtnHigh.setBounds(276, 535, 101, 20);
		contentPane.add(rdbtnHigh);

		lblSpeedSensor = new JLabel("Speed sensor");
		lblSpeedSensor.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblSpeedSensor.setBounds(276, 600, 86, 20);
		contentPane.add(lblSpeedSensor);

		rdbtnInternal = new JRadioButton("Internal");
		rdbtnInternal.setSelected(true);
		Speedsensor.add(rdbtnInternal);
		rdbtnInternal.setBounds(276, 625, 101, 20);
		contentPane.add(rdbtnInternal);

		rdbtnExternal = new JRadioButton("External");
		Speedsensor.add(rdbtnExternal);
		rdbtnExternal.setBounds(276, 645, 101, 20);
		contentPane.add(rdbtnExternal);

		JLabel lblPasThreshold = new JLabel("PAS threshold");
		lblPasThreshold.setBounds(383, 449, 86, 20);
		contentPane.add(lblPasThreshold);

		PAS_threshold = new JTextField();
		PAS_threshold.setText("1.7");
		PAS_threshold.setColumns(10);
		PAS_threshold.setBounds(476, 446, 86, 20);
		contentPane.add(PAS_threshold);

		JLabel lblPasDirection = new JLabel("PAS direction");
		lblPasDirection.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblPasDirection.setBounds(15, 600, 98, 20);
		contentPane.add(lblPasDirection);

		rdbtnRight = new JRadioButton("Right");
		PASdirection.add(rdbtnRight);
		rdbtnRight.setSelected(true);
		rdbtnRight.setBounds(15, 625, 67, 20);
		contentPane.add(rdbtnRight);

		rdbtnLeft = new JRadioButton("Left");
		PASdirection.add(rdbtnLeft);
		rdbtnLeft.setBounds(15, 645, 67, 20);
		contentPane.add(rdbtnLeft);
		
		JLabel lblRegeneration = new JLabel("Regeneration");
		lblRegeneration.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblRegeneration.setBounds(15, 490, 86, 20);
		contentPane.add(lblRegeneration);

		rdbtnRegenDigital = new JRadioButton("digital");
		rdbtnRegenDigital.setBounds(15, 555, 97, 20);
		Regen.add(rdbtnRegenDigital);
		contentPane.add(rdbtnRegenDigital);

		rdbtnNone_1 = new JRadioButton("None");
		rdbtnNone_1.setSelected(true);
		Regen.add(rdbtnNone_1);
		rdbtnNone_1.setBounds(15, 515, 97, 20);
		contentPane.add(rdbtnNone_1);
		
		rdbtnRegen = new JRadioButton("linear");
		rdbtnRegen.setBounds(15, 535, 97, 23);
		Regen.add(rdbtnRegen);
		contentPane.add(rdbtnRegen);


		
		
		
		lblDiplayType = new JLabel("Display Type");
		lblDiplayType.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblDiplayType.setBounds(382, 490, 86, 20);
		contentPane.add(lblDiplayType);

		rdbtnNone = new JRadioButton("None");
		rdbtnNone.setSelected(true);
		displayButtonGroup.add(rdbtnNone);
		rdbtnNone.setBounds(382, 515, 131, 20);
		contentPane.add(rdbtnNone);

		rdbtnKingmeterJlcd = new JRadioButton("Kingmeter J-LCD *");
		displayButtonGroup.add(rdbtnKingmeterJlcd);
		rdbtnKingmeterJlcd.setBounds(382, 540, 131, 20);
		contentPane.add(rdbtnKingmeterJlcd);

		rdbtnKtlcd = new JRadioButton("KT-LCD3");
		displayButtonGroup.add(rdbtnKtlcd);
		rdbtnKtlcd.setBounds(382, 565, 131, 20);
		contentPane.add(rdbtnKtlcd);

		rdbtnBluOsecDisplay = new JRadioButton("BluOsec App");
		displayButtonGroup.add(rdbtnBluOsecDisplay);
		rdbtnBluOsecDisplay.setBounds(382, 590, 131, 20);
		contentPane.add(rdbtnBluOsecDisplay);
		
		rdbtnDiganostics = new JRadioButton("Diagnostics");
		displayButtonGroup.add(rdbtnDiganostics);
		rdbtnDiganostics.setBounds(382, 615, 131, 20);
		contentPane.add(rdbtnDiganostics);

		JButton btnWriteoptionsbyte = new JButton("Write Option Bytes");
		btnWriteoptionsbyte.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnWriteoptionsbyte.setForeground(Color.BLUE);
		btnWriteoptionsbyte.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				{

					int n = JOptionPane.showConfirmDialog(
							null,
							"If you run this function with a brand new controller, the original firmware will be erased. This can't be undone. Are you sure?",
							"",
							JOptionPane.YES_NO_OPTION);

					if (n == JOptionPane.YES_OPTION) {
						try {
							Process process = Runtime.getRuntime().exec("cmd /c start WriteOptionBytes");
						} catch (IOException e1) {
							txtThrottlemin.setText("Error");
							e1.printStackTrace();
						}
					} else {
						JOptionPane.showMessageDialog(null, "Goodbye");
					}

					// Saving code here
				}
			}
		});
		btnWriteoptionsbyte.setBounds(600, 565, 320, 51);
		contentPane.add(btnWriteoptionsbyte);

		btnWriteConfiguration = new JButton("Write Configuration");
		btnWriteConfiguration.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				PrintWriter pWriter = null;
				PrintWriter iWriter = null;
				try {
					//FileWriter fw = new FileWriter("settings.ini");
					//BufferedWriter bw = new BufferedWriter(fw);

					File newFile = new File(settingsDir + File.separator + new SimpleDateFormat("yyyyMMdd-HHmmssz").format(new Date()) + ".ini");
					settingsFilesModel.add(0, new FileContainer(newFile));

					iWriter = new PrintWriter(new BufferedWriter(new FileWriter(newFile)));
					pWriter = new PrintWriter(new BufferedWriter(new FileWriter("config.h")));
					pWriter.println("/*\r\n"
							+ " * config.h\r\n"
							+ " *\r\n"
							+ " *  Automatically created by OSEC Parameter Configurator\r\n"
							+ " *  Author: stancecoke\r\n"
							+ " */\r\n"
							+ "\r\n"
							+ "#ifndef CONFIG_H_\r\n"
							+ "#define CONFIG_H_\r\n");

					String text_to_save = "#define NUMBER_OF_PAS_MAGS " + txtNumberOfPas.getText();
					iWriter.println(txtNumberOfPas.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define limit " + txtSpeedlimit.getText();
					iWriter.println(txtSpeedlimit.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define timeout " + txtPasTimeout.getText();
					iWriter.println(txtPasTimeout.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define wheel_circumference " + txtWheelCircumference.getText() + "L";
					iWriter.println(txtWheelCircumference.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define fummelfaktor " + txtSupportfactor.getText() + "L";
					iWriter.println(txtSupportfactor.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define ADC_THROTTLE_MIN_VALUE " + txtThrottlemin.getText();
					iWriter.println(txtThrottlemin.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define ADC_THROTTLE_MAX_VALUE " + txtThrottlemax.getText();
					iWriter.println(txtThrottlemax.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define BATTERY_VOLTAGE_MIN_VALUE " + txtUndervoltage.getText();
					iWriter.println(txtUndervoltage.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define BATTERY_CURRENT_MAX_VALUE " + txtMaxbatterycurrent.getText() + "L";
					iWriter.println(txtMaxbatterycurrent.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define PHASE_CURRENT_MAX_VALUE " + txtMaxphasecurrent.getText() + "L";
					iWriter.println(txtMaxphasecurrent.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define REGEN_CURRENT_MAX_VALUE " + txtMaxregencurrent.getText() + "L";
					iWriter.println(txtMaxregencurrent.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT " + txtMotor_specific_angle.getText();
					iWriter.println(txtMotor_specific_angle.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define current_cal_a " + txtBatteryCurcala.getText();
					iWriter.println(txtBatteryCurcala.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define TEMP_CAL_A " + TempCalA.getText();
					iWriter.println(TempCalA.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define TEMP_CAL_B " + TempCalB.getText();
					iWriter.println(TempCalB.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define LEVEL_1 " + Assist_Level_1.getText();
					iWriter.println(Assist_Level_1.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define LEVEL_2 " + Assist_Level_2.getText();
					iWriter.println(Assist_Level_2.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define LEVEL_3 " + Assist_Level_3.getText();
					iWriter.println(Assist_Level_3.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define LEVEL_4 " + Assist_Level_4.getText();
					iWriter.println(Assist_Level_4.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define LEVEL_5 " + Assist_Level_5.getText();
					iWriter.println(Assist_Level_5.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define MORSE_TIME_1 " + Morse_Time_1.getText();
					iWriter.println(Morse_Time_1.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define MORSE_TIME_2 " + Morse_Time_2.getText();
					iWriter.println(Morse_Time_2.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define MORSE_TIME_3 " + Morse_Time_3.getText();
					iWriter.println(Morse_Time_3.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define RAMP_END " + ramp_end.getText();
					iWriter.println(ramp_end.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define P_FACTOR " + p_factor.getText();
					iWriter.println(p_factor.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define I_FACTOR " + i_factor.getText();
					iWriter.println(i_factor.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define GEAR_RATIO " + GearRatio.getText() + "L";
					iWriter.println(GearRatio.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define BATTERY_LI_ION_CELLS_NUMBER " + CellsNumber.getText();
					iWriter.println(CellsNumber.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define PAS_THRESHOLD " + PAS_threshold.getText();
					iWriter.println(PAS_threshold.getText());
					pWriter.println(text_to_save);

					if (rdbtnTorqueSensor.isSelected()) {
						text_to_save = "#define TORQUESENSOR";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnTorqueSensor.isSelected());

					if (rdbtnThrottlePas.isSelected()) {
						text_to_save = "#define THROTTLE_AND_PAS";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnThrottlePas.isSelected());

					if (rdbtnThrottle.isSelected()) {
						text_to_save = "#define THROTTLE";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnThrottle.isSelected());

					if (rdbtnTorquesimulation.isSelected()) {
						text_to_save = "#define TORQUE_SIMULATION";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnTorquesimulation.isSelected());

					if (rdbtnHigh.isSelected()) {
						text_to_save = "#define PWM_CYCLES_SECOND 20833L";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnHigh.isSelected());

					if (rdbtnNormal.isSelected()) {
						text_to_save = "#define PWM_CYCLES_SECOND 15625L";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnNormal.isSelected());

					if (rdbtnKtlcd.isSelected()) {
						text_to_save = "#define DISPLAY_TYPE_KT_LCD3";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnKtlcd.isSelected());

					if (rdbtnKingmeterJlcd.isSelected()) {
						text_to_save = "#define DISPLAY_TYPE_KINGMETER_618U (1<<4) // King-Meter 618U protocol (KM5s, EBS-LCD2, J-LCD, SW-LCD)";
						pWriter.println(text_to_save);
						text_to_save = "#define DISPLAY_TYPE_KINGMETER (DISPLAY_TYPE_KINGMETER_618U|DISPLAY_TYPE_KINGMETER_901U)";
						pWriter.println(text_to_save);
						text_to_save = "#define DISPLAY_TYPE DISPLAY_TYPE_KINGMETER  // Set your display type here. CHANGES ONLY HERE!";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnKingmeterJlcd.isSelected());

					if (rdbtnInternal.isSelected()) {
						text_to_save = "#define SPEEDSENSOR_INTERNAL";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnInternal.isSelected());

					if (rdbtnExternal.isSelected()) {
						text_to_save = "#define SPEEDSENSOR_EXTERNAL";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnExternal.isSelected());

					if (rdbtnDiganostics.isSelected()) {
						text_to_save = "#define DIAGNOSTICS";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnDiganostics.isSelected());

					if (rdbtnRegenDigital.isSelected()) {
						text_to_save = "#define REGEN_DIGITAL";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnRegenDigital.isSelected());

					if (rdbtnRegen.isSelected()) {
						text_to_save = "#define REGEN";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnRegen.isSelected());

					if (rdbtnLeft.isSelected()) {
						text_to_save = "#define PAS_DIRECTION 0";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnLeft.isSelected());

					if (rdbtnRight.isSelected()) {
						text_to_save = "#define PAS_DIRECTION 1";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnRight.isSelected());

					if (rdbtnBluOsecDisplay.isSelected()) {
						text_to_save = "#define BLUOSEC";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnBluOsecDisplay.isSelected());
					
					
					iWriter.println(rdbtnNone.isSelected());
					iWriter.println(rdbtnNone_1.isSelected());
					
					pWriter.println("#define EEPROM_INIT_MAGIC_BYTE " + (System.currentTimeMillis()%256) +" // makes sure (chance of fail 1/255) eeprom is invalidated after flashing new config");

					pWriter.println("\r\n#endif /* CONFIG_H_ */");

					iWriter.close();

				} catch (IOException ioe) {
					ioe.printStackTrace();
				} finally {
					if (pWriter != null) {
						pWriter.flush();
						pWriter.close();

					}
				}
				try {
					Process process = Runtime.getRuntime().exec("cmd /c start Start_Compiling");
				} catch (IOException e1) {
					txtThrottlemin.setText("Error");
					e1.printStackTrace();
				}
			}
		});
		btnWriteConfiguration.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnWriteConfiguration.setForeground(Color.BLUE);
		btnWriteConfiguration.setBounds(600, 495, 320, 58);
		contentPane.add(btnWriteConfiguration);

		
		if (lastSettingsFile != null){
			loadSettings(lastSettingsFile);
		}
	}
}
