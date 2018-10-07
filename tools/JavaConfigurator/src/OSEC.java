
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
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
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
import javax.swing.JCheckBox;

public class OSEC extends JFrame {

	public class FileContainer {

		public FileContainer(File file) {
			this.file = file;
		}
		public File file;

		@Override
		public String toString() {
			return file.getName();
		}
	}

	private JPanel contentPane;
	private JTextField txtPasTimeout;
	private JTextField txtWheelCircumference;
	private JTextField txtNumberOfPas;
	private JLabel lblSpeedLimit;
	private JTextField txtSpeedlimit;
	private JTextField txtSpeedlimitWithoutPas;
	private JTextField txtSpeedlimitWithThrottleOverride;
	private JLabel lblSupportFactor;
	private JLabel lblThrottleMin;
	private JTextField txtThrottlemin;
	private JLabel lblThrottleMax;
	private JTextField txtThrottlemax;
	private JButton lblHttpsopensourceebikefirmwarebitbucketio;
	private JLabel lblOpenSourceFirmware;
	private JButton btnWriteConfiguration;
	private JTextField txtMaxbatterycurrent;
	private JTextField txtUndervoltage;
	//private final ButtonGroup Ridingmode = new ButtonGroup();
	private JTextField txtMotor_specific_angle;
	private JTextField txtBatteryCurcala;
	private JLabel lblDiplayType;
	private final ButtonGroup displayButtonGroup = new ButtonGroup();
	private final ButtonGroup MotorSpeed = new ButtonGroup();
	private final ButtonGroup Speedsensor = new ButtonGroup();

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
	private JTextField ramp_start;
	private JTextField flt_tqCalibrationFactor;
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

	private JRadioButton rdbtnKingmeterJlcd;
	private JRadioButton rdbtnKtlcd;
	private JRadioButton rdbtnDiganostics;

	private JCheckBox cbResetEeprom;

	private JCheckBox cbTorqueSensor;
	private JCheckBox cbBypassLowSpeedRegenPiControl;
	private JCheckBox cbAssistLevelInfluencesThrottle;
	private JCheckBox cbOffroadEnabled;
	private JCheckBox cbBrakeDisablesOffroad;

	private JCheckBox cbDigitalRegen;
	private JCheckBox cbSpeedInfluencesRegen;
	private JCheckBox cbSpeedInfluencesTqSensor;
	private JCheckBox cbPasInverted;
	private JCheckBox cbPwmOff;
	private JCheckBox cbDynAssist;

	private JTextField speedWithoutPas;
	private JTextField speedWithoutThrottleOverride;

	private JRadioButton rdbtnNodisplay;

	private File settingsDir;
	private File lastSettingsFile = null;

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
		txtSpeedlimitWithoutPas.setText(in.readLine());if (txtSpeedlimitWithoutPas.getText().trim().isEmpty())txtSpeedlimitWithoutPas.setText("6");
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

		cbTorqueSensor.setSelected(Boolean.parseBoolean(in.readLine()));
		ramp_start.setText(in.readLine());
		txtSpeedlimitWithThrottleOverride.setText(in.readLine());if (txtSpeedlimitWithThrottleOverride.getText().trim().isEmpty())txtSpeedlimitWithThrottleOverride.setText("25");
		in.readLine();//old options, no longer used

		rdbtnHigh.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnNormal.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnKtlcd.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnKingmeterJlcd.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnInternal.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnExternal.setSelected(Boolean.parseBoolean(in.readLine()));
		rdbtnDiganostics.setSelected(Boolean.parseBoolean(in.readLine()));
		in.readLine();
		in.readLine();
		in.readLine();
		in.readLine();
		rdbtnBluOsecDisplay.setSelected(Boolean.parseBoolean(in.readLine()));

		rdbtnNodisplay.setSelected(Boolean.parseBoolean(in.readLine()));
		in.readLine();//old options, no longer used

		in.readLine();//old options, no longer used
		flt_tqCalibrationFactor.setText(in.readLine());

		int acaFlags = Integer.parseInt(in.readLine());
		cbAssistLevelInfluencesThrottle.setSelected((acaFlags & 1) > 0);
		cbOffroadEnabled.setSelected((acaFlags & 2) > 0);
		cbBrakeDisablesOffroad.setSelected((acaFlags & 4) > 0);

		cbDigitalRegen.setSelected((acaFlags & 8) > 0);
		cbSpeedInfluencesRegen.setSelected((acaFlags & 16) > 0);
		cbSpeedInfluencesTqSensor.setSelected((acaFlags & 32) > 0);
		cbPasInverted.setSelected((acaFlags & 64) > 0);
		cbBypassLowSpeedRegenPiControl.setSelected((acaFlags & 256) > 0);
		
		cbDynAssist.setSelected((acaFlags & 512) > 0);
		cbPwmOff.setSelected((acaFlags & 1024) > 0);
		in.close();
	}

	private void updateDependiencies() {
		if (cbTorqueSensor.isSelected()) {
			ramp_end.setText("0");
			ramp_end.setEditable(false);
			ramp_start.setText("0");
			ramp_start.setEditable(false);
			flt_tqCalibrationFactor.setEditable(true);
			flt_tqCalibrationFactor.setText("1000.0");
		} else {
			flt_tqCalibrationFactor.setText("0.0");
			ramp_end.setText("1500");
			ramp_end.setEditable(true);
			ramp_start.setText("64000");
			ramp_start.setEditable(true);
			flt_tqCalibrationFactor.setEditable(false);

		}
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
		lblTollesProgramm.setForeground(Color.GRAY);
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

			if (lastSettingsFile == null) {
				lastSettingsFile = file;
			} else {
				if (file.getName().compareTo(lastSettingsFile.getName()) > 0) {
					lastSettingsFile = file;
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
				settingsList.clearSelection();
				updateDependiencies();
			}
		});

		JLabel lblNumberOfPas = new JLabel("No. of PAS Magnets");
		lblNumberOfPas.setBounds(15, 90, 141, 14);
		contentPane.add(lblNumberOfPas);

		txtNumberOfPas = new JTextField();
		txtNumberOfPas.setText("16");
		txtNumberOfPas.setBounds(150, 90, 86, 20);
		contentPane.add(txtNumberOfPas);
		txtNumberOfPas.setColumns(10);

		JLabel lblWheelCircumference = new JLabel("Wheel circumference");
		lblWheelCircumference.setBounds(15, 110, 131, 14);
		contentPane.add(lblWheelCircumference);

		txtWheelCircumference = new JTextField();
		txtWheelCircumference.setText("2000");
		txtWheelCircumference.setBounds(150, 110, 86, 20);
		contentPane.add(txtWheelCircumference);
		txtWheelCircumference.setColumns(10);

		JLabel lblPasTimeout = new JLabel("PAS Timeout");
		lblPasTimeout.setBounds(15, 130, 130, 14);
		contentPane.add(lblPasTimeout);

		txtPasTimeout = new JTextField();
		txtPasTimeout.setText("3125");
		txtPasTimeout.setBounds(150, 130, 86, 20);
		contentPane.add(txtPasTimeout);
		txtPasTimeout.setColumns(10);

		lblThrottleMin = new JLabel("Throttle min");
		lblThrottleMin.setBounds(15, 150, 78, 14);
		lblThrottleMin.setForeground(Color.GRAY);
		contentPane.add(lblThrottleMin);

		txtThrottlemin = new JTextField();
		txtThrottlemin.setText("43");
		txtThrottlemin.setBounds(150, 150, 86, 20);
		contentPane.add(txtThrottlemin);
		txtThrottlemin.setColumns(10);

		lblThrottleMax = new JLabel("Throttle max");
		lblThrottleMax.setBounds(15, 170, 78, 14);
		lblThrottleMax.setForeground(Color.GRAY);
		contentPane.add(lblThrottleMax);

		txtThrottlemax = new JTextField();
		txtThrottlemax.setText("182");
		txtThrottlemax.setBounds(150, 170, 86, 20);
		contentPane.add(txtThrottlemax);
		txtThrottlemax.setColumns(10);

		JLabel lblBatteryCurrentMax = new JLabel("Battery Current max");
		lblBatteryCurrentMax.setForeground(Color.GRAY);
		lblBatteryCurrentMax.setBounds(15, 190, 131, 14);
		contentPane.add(lblBatteryCurrentMax);

		txtMaxbatterycurrent = new JTextField();
		txtMaxbatterycurrent.setText("372");
		txtMaxbatterycurrent.setBounds(150, 190, 86, 20);
		contentPane.add(txtMaxbatterycurrent);
		txtMaxbatterycurrent.setColumns(10);

		JLabel lblPhaseCurrentMax = new JLabel("Phase Current max");
		lblPhaseCurrentMax.setBounds(15, 210, 131, 14);
		contentPane.add(lblPhaseCurrentMax);

		txtMaxphasecurrent = new JTextField();
		txtMaxphasecurrent.setText("372");
		txtMaxphasecurrent.setColumns(10);
		txtMaxphasecurrent.setBounds(150, 210, 86, 20);
		contentPane.add(txtMaxphasecurrent);

		JLabel lblRegenCurrentMax = new JLabel("Regen Current max");
		lblRegenCurrentMax.setForeground(Color.GRAY);
		lblRegenCurrentMax.setBounds(15, 230, 131, 14);
		contentPane.add(lblRegenCurrentMax);

		txtMaxregencurrent = new JTextField();
		txtMaxregencurrent.setText("282");
		txtMaxregencurrent.setColumns(10);
		txtMaxregencurrent.setBounds(150, 230, 86, 20);
		contentPane.add(txtMaxregencurrent);

		JLabel lblUndervoltageLimit = new JLabel("Undervoltage limit");
		lblUndervoltageLimit.setBounds(15, 250, 121, 14);
		contentPane.add(lblUndervoltageLimit);

		txtUndervoltage = new JTextField();
		txtUndervoltage.setText("127");
		txtUndervoltage.setBounds(150, 250, 86, 20);
		contentPane.add(txtUndervoltage);
		txtUndervoltage.setColumns(10);

		JLabel lblMotorSpecificAngle = new JLabel("Motor specific angle");
		lblMotorSpecificAngle.setBounds(15, 270, 121, 14);
		lblMotorSpecificAngle.setForeground(Color.GRAY);
		contentPane.add(lblMotorSpecificAngle);

		txtMotor_specific_angle = new JTextField();
		txtMotor_specific_angle.setText("214");
		txtMotor_specific_angle.setBounds(150, 270, 86, 20);
		contentPane.add(txtMotor_specific_angle);
		txtMotor_specific_angle.setColumns(10);

		JLabel lblBatteryCurrentCal = new JLabel("Battery Current cal a");
		lblBatteryCurrentCal.setBounds(15, 290, 121, 14);
		contentPane.add(lblBatteryCurrentCal);

		txtBatteryCurcala = new JTextField();
		txtBatteryCurcala.setText("10");
		txtBatteryCurcala.setBounds(150, 290, 86, 20);
		contentPane.add(txtBatteryCurcala);
		txtBatteryCurcala.setColumns(10);

		JLabel lblTemperatureCalA = new JLabel("Temperature cal a");
		lblTemperatureCalA.setBounds(15, 310, 121, 14);
		contentPane.add(lblTemperatureCalA);

		TempCalA = new JTextField();
		TempCalA.setText("1.6");
		TempCalA.setColumns(10);
		TempCalA.setBounds(150, 310, 86, 20);
		contentPane.add(TempCalA);

		JLabel lblTemperatureCalB = new JLabel("Temperature cal b");
		lblTemperatureCalB.setBounds(15, 330, 121, 14);
		contentPane.add(lblTemperatureCalB);

		TempCalB = new JTextField();
		TempCalB.setText("110.4");
		TempCalB.setColumns(10);
		TempCalB.setBounds(150, 330, 86, 20);
		contentPane.add(TempCalB);

		JLabel lblPfactor = new JLabel("Gain P");
		lblPfactor.setBounds(15, 350, 67, 14);
		lblPfactor.setForeground(Color.GRAY);
		contentPane.add(lblPfactor);

		p_factor = new JTextField();
		p_factor.setText("0.5");
		p_factor.setColumns(10);
		p_factor.setBounds(150, 350, 86, 20);
		contentPane.add(p_factor);

		JLabel lblIfactor = new JLabel("Gain I");
		lblIfactor.setForeground(Color.GRAY);
		lblIfactor.setBounds(15, 370, 67, 14);
		contentPane.add(lblIfactor);

		i_factor = new JTextField();
		i_factor.setText("0.2");
		i_factor.setColumns(10);
		i_factor.setBounds(150, 370, 86, 20);
		contentPane.add(i_factor);

		JLabel lblGearRatio = new JLabel("Gear Ratio");
		lblGearRatio.setBounds(15, 390, 131, 14);
		contentPane.add(lblGearRatio);

		GearRatio = new JTextField();
		GearRatio.setText("64");
		GearRatio.setColumns(10);
		GearRatio.setBounds(150, 390, 86, 20);
		contentPane.add(GearRatio);

		JLabel lblNumberSerialCells = new JLabel("Serial cells");
		lblNumberSerialCells.setBounds(15, 410, 86, 14);
		contentPane.add(lblNumberSerialCells);

		CellsNumber = new JTextField();
		CellsNumber.setText("10");
		CellsNumber.setColumns(10);
		CellsNumber.setBounds(150, 410, 86, 20);
		contentPane.add(CellsNumber);

		JLabel lblPasThreshold = new JLabel("PAS threshold");
		lblPasThreshold.setBounds(15, 430, 86, 20);
		lblPasThreshold.setForeground(Color.GRAY);
		contentPane.add(lblPasThreshold);

		PAS_threshold = new JTextField();
		PAS_threshold.setText("1.7");
		PAS_threshold.setColumns(10);
		PAS_threshold.setBounds(150, 430, 86, 20);
		contentPane.add(PAS_threshold);

		JLabel lblAssistLevel = new JLabel("Assist Level 1");
		lblAssistLevel.setBounds(332, 90, 88, 14);
		contentPane.add(lblAssistLevel);

		Assist_Level_1 = new JTextField();
		Assist_Level_1.setText("20");
		Assist_Level_1.setColumns(10);
		Assist_Level_1.setBounds(476, 90, 86, 20);
		contentPane.add(Assist_Level_1);

		JLabel lblAssistLevel_1 = new JLabel("Assist Level 2");
		lblAssistLevel_1.setBounds(332, 110, 86, 14);
		contentPane.add(lblAssistLevel_1);

		Assist_Level_2 = new JTextField();
		Assist_Level_2.setText("40");
		Assist_Level_2.setColumns(10);
		Assist_Level_2.setBounds(476, 110, 86, 20);
		contentPane.add(Assist_Level_2);

		JLabel lblAssistLevel_2 = new JLabel("Assist Level 3");
		lblAssistLevel_2.setBounds(332, 130, 86, 14);
		contentPane.add(lblAssistLevel_2);

		Assist_Level_3 = new JTextField();
		Assist_Level_3.setText("60");
		Assist_Level_3.setColumns(10);
		Assist_Level_3.setBounds(476, 130, 86, 20);
		contentPane.add(Assist_Level_3);

		lblAssistLevel_3 = new JLabel("Assist Level 4");
		lblAssistLevel_3.setBounds(332, 150, 86, 14);
		contentPane.add(lblAssistLevel_3);

		Assist_Level_4 = new JTextField();
		Assist_Level_4.setText("80");
		Assist_Level_4.setColumns(10);
		Assist_Level_4.setBounds(476, 150, 86, 20);
		contentPane.add(Assist_Level_4);

		lblAssistLevel_4 = new JLabel("Assist Level 5");
		lblAssistLevel_4.setBounds(332, 170, 86, 14);
		contentPane.add(lblAssistLevel_4);

		Assist_Level_5 = new JTextField();
		Assist_Level_5.setText("100");
		Assist_Level_5.setColumns(10);
		Assist_Level_5.setBounds(476, 170, 86, 20);
		contentPane.add(Assist_Level_5);

		JList list = new JList();
		list.setBounds(441, 177, 1, 1);
		contentPane.add(list);

		JLabel lblMorsetime = new JLabel("Morse-time 1");
		lblMorsetime.setBounds(332, 200, 86, 14);
		contentPane.add(lblMorsetime);

		Morse_Time_1 = new JTextField();
		Morse_Time_1.setText("50");
		Morse_Time_1.setColumns(10);
		Morse_Time_1.setBounds(476, 200, 86, 20);
		contentPane.add(Morse_Time_1);

		JLabel lblMorsetime_1 = new JLabel("Morse-time 2");
		lblMorsetime_1.setBounds(332, 220, 86, 14);
		contentPane.add(lblMorsetime_1);

		Morse_Time_2 = new JTextField();
		Morse_Time_2.setText("50");
		Morse_Time_2.setColumns(10);
		Morse_Time_2.setBounds(476, 220, 86, 20);
		contentPane.add(Morse_Time_2);

		JLabel lblMorsetime_2 = new JLabel("Morse-time 3");
		lblMorsetime_2.setBounds(332, 240, 88, 14);
		contentPane.add(lblMorsetime_2);

		Morse_Time_3 = new JTextField();
		Morse_Time_3.setText("50");
		Morse_Time_3.setColumns(10);
		Morse_Time_3.setBounds(476, 240, 86, 20);
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

		JLabel lblRampEnd = new JLabel("Ramp end");
		lblRampEnd.setBounds(332, 280, 67, 14);
		lblRampEnd.setForeground(Color.GRAY);
		contentPane.add(lblRampEnd);

		ramp_end = new JTextField();
		ramp_end.setText("2000");
		ramp_end.setColumns(10);
		ramp_end.setBounds(476, 280, 86, 20);
		contentPane.add(ramp_end);

		JLabel lblRampStart = new JLabel("Ramp start");
		lblRampStart.setBounds(332, 300, 67, 14);
		lblRampStart.setForeground(Color.GRAY);
		contentPane.add(lblRampStart);

		ramp_start = new JTextField();
		ramp_start.setText("7000");
		ramp_start.setColumns(10);
		ramp_start.setBounds(476, 300, 86, 20);
		contentPane.add(ramp_start);

		JLabel lblTqCalibrationFactor = new JLabel("TQ Calib");
		lblTqCalibrationFactor.setBounds(332, 320, 67, 14);
		lblTqCalibrationFactor.setForeground(Color.GRAY);
		contentPane.add(lblTqCalibrationFactor);

		flt_tqCalibrationFactor = new JTextField();
		flt_tqCalibrationFactor.setText("1000.0");
		flt_tqCalibrationFactor.setColumns(10);
		flt_tqCalibrationFactor.setBounds(476, 320, 86, 20);
		contentPane.add(flt_tqCalibrationFactor);

		lblSpeedLimit = new JLabel("Speed Limit (km/h)");
		lblSpeedLimit.setBounds(332, 340, 135, 14);
		lblSpeedLimit.setForeground(Color.GRAY);
		contentPane.add(lblSpeedLimit);

		txtSpeedlimit = new JTextField();
		txtSpeedlimit.setText("25");
		txtSpeedlimit.setBounds(476, 340, 86, 20);
		contentPane.add(txtSpeedlimit);
		txtSpeedlimit.setColumns(10);
		
		
		JLabel lblSpeedLimitwopas = new  JLabel("Without PAS (km/h)");
		lblSpeedLimitwopas.setBounds(332, 360, 135, 14);
		lblSpeedLimitwopas.setForeground(Color.GRAY);
		contentPane.add(lblSpeedLimitwopas);

		txtSpeedlimitWithoutPas = new JTextField();
		txtSpeedlimitWithoutPas.setText("6");
		txtSpeedlimitWithoutPas.setBounds(476, 360, 86, 20);
		contentPane.add(txtSpeedlimitWithoutPas);
		txtSpeedlimitWithoutPas.setColumns(10);
		
		
		JLabel lblSpeedLimitwto = new JLabel("W. throttle (offroad) (km/h)");
		lblSpeedLimitwto.setBounds(332, 380, 135, 14);
		lblSpeedLimitwto.setForeground(Color.GRAY);
		contentPane.add(lblSpeedLimitwto);

		txtSpeedlimitWithThrottleOverride = new JTextField();
		txtSpeedlimitWithThrottleOverride.setText("25");
		txtSpeedlimitWithThrottleOverride.setBounds(476, 380, 86, 20);
		contentPane.add(txtSpeedlimitWithThrottleOverride);
		txtSpeedlimitWithThrottleOverride.setColumns(10);
		
		

		JLabel lblRideMode = new JLabel("Ride Options");
		lblRideMode.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblRideMode.setBounds(15, 470, 86, 20);
		lblRideMode.setForeground(Color.GRAY);
		contentPane.add(lblRideMode);

		cbBypassLowSpeedRegenPiControl = new JCheckBox("Bypass PI control regen @low speed");
		cbBypassLowSpeedRegenPiControl.setSelected(false);
		cbBypassLowSpeedRegenPiControl.setBounds(15, 495, 250, 20);
		cbBypassLowSpeedRegenPiControl.setForeground(Color.GRAY);
		contentPane.add(cbBypassLowSpeedRegenPiControl);

		cbTorqueSensor = new JCheckBox("Torquesensor");
		cbTorqueSensor.setSelected(false);
		cbTorqueSensor.setForeground(Color.GRAY);
		cbTorqueSensor.setBounds(15, 515, 250, 20);
		contentPane.add(cbTorqueSensor);

		cbTorqueSensor.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				updateDependiencies();
			}
		});

		cbAssistLevelInfluencesThrottle = new JCheckBox("Assist Lvl affects Throttle");
		cbAssistLevelInfluencesThrottle.setSelected(false);
		cbAssistLevelInfluencesThrottle.setBounds(15, 535, 250, 20);
		cbAssistLevelInfluencesThrottle.setForeground(Color.GRAY);
		contentPane.add(cbAssistLevelInfluencesThrottle);

		cbOffroadEnabled = new JCheckBox("Offroad Enabled");
		cbOffroadEnabled.setSelected(false);
		cbOffroadEnabled.setBounds(15, 555, 250, 20);
		cbOffroadEnabled.setForeground(Color.GRAY);
		contentPane.add(cbOffroadEnabled);

		cbBrakeDisablesOffroad = new JCheckBox("Brake Disables Offroad");
		cbBrakeDisablesOffroad.setSelected(false);
		cbBrakeDisablesOffroad.setBounds(15, 575, 250, 20);
		cbBrakeDisablesOffroad.setForeground(Color.GRAY);
		contentPane.add(cbBrakeDisablesOffroad);

		cbDigitalRegen = new JCheckBox("Regen Digital (no X4 throttle)");
		cbDigitalRegen.setSelected(false);
		cbDigitalRegen.setBounds(15, 595, 250, 20);
		cbDigitalRegen.setForeground(Color.GRAY);
		contentPane.add(cbDigitalRegen);

		cbSpeedInfluencesRegen = new JCheckBox("Speed Influences Regen Rate");
		cbSpeedInfluencesRegen.setSelected(false);
		cbSpeedInfluencesRegen.setBounds(15, 615, 250, 20);
		cbSpeedInfluencesRegen.setForeground(Color.GRAY);
		contentPane.add(cbSpeedInfluencesRegen);

		cbSpeedInfluencesTqSensor = new JCheckBox("Speed influences Tq Sensor");
		cbSpeedInfluencesTqSensor.setSelected(false);
		cbSpeedInfluencesTqSensor.setBounds(15, 635, 250, 20);
		cbSpeedInfluencesTqSensor.setForeground(Color.GRAY);
		contentPane.add(cbSpeedInfluencesTqSensor);

		cbPasInverted = new JCheckBox("Pas inverted (right side)");
		cbPasInverted.setSelected(false);
		cbPasInverted.setBounds(15, 655, 250, 20);
		cbPasInverted.setForeground(Color.GRAY);
		contentPane.add(cbPasInverted);
		
		cbDynAssist = new JCheckBox("Dynamic Assist Level");
		cbDynAssist.setSelected(false);
		cbDynAssist.setBounds(332, 495, 250, 20);
		cbDynAssist.setForeground(Color.GRAY);
		contentPane.add(cbDynAssist);
		
		cbPwmOff = new JCheckBox("PWM off @freeride");
		cbPwmOff.setSelected(false);
		cbPwmOff.setBounds(332, 515, 250, 20);
		cbPwmOff.setForeground(Color.GRAY);
		contentPane.add(cbPwmOff);

		JLabel lblMotorSpeed = new JLabel("Motor Speed");
		lblMotorSpeed.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblMotorSpeed.setBounds(476, 400, 86, 20);
		contentPane.add(lblMotorSpeed);

		rdbtnNormal = new JRadioButton("Normal");
		rdbtnNormal.setSelected(true);
		MotorSpeed.add(rdbtnNormal);
		rdbtnNormal.setBounds(476, 425, 101, 20);
		contentPane.add(rdbtnNormal);

		rdbtnHigh = new JRadioButton("High");
		MotorSpeed.add(rdbtnHigh);
		rdbtnHigh.setBounds(476, 445, 101, 20);
		contentPane.add(rdbtnHigh);

		lblSpeedSensor = new JLabel("Speed sensor");
		lblSpeedSensor.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblSpeedSensor.setBounds(332, 400, 86, 20);
		contentPane.add(lblSpeedSensor);

		rdbtnInternal = new JRadioButton("Internal");
		rdbtnInternal.setSelected(true);
		Speedsensor.add(rdbtnInternal);
		rdbtnInternal.setBounds(332, 425, 101, 20);
		contentPane.add(rdbtnInternal);

		rdbtnExternal = new JRadioButton("External");
		Speedsensor.add(rdbtnExternal);
		rdbtnExternal.setBounds(332, 445, 101, 20);
		contentPane.add(rdbtnExternal);

		lblDiplayType = new JLabel("Display Type");
		lblDiplayType.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblDiplayType.setBounds(600, 400, 86, 20);
		contentPane.add(lblDiplayType);

		rdbtnNodisplay = new JRadioButton("None");
		rdbtnNodisplay.setSelected(true);
		displayButtonGroup.add(rdbtnNodisplay);
		rdbtnNodisplay.setBounds(600, 425, 131, 20);
		contentPane.add(rdbtnNodisplay);

		rdbtnKingmeterJlcd = new JRadioButton("Kingmeter J-LCD *");
		displayButtonGroup.add(rdbtnKingmeterJlcd);
		rdbtnKingmeterJlcd.setBounds(600, 445, 131, 20);
		contentPane.add(rdbtnKingmeterJlcd);

		rdbtnKtlcd = new JRadioButton("KT-LCD3");
		displayButtonGroup.add(rdbtnKtlcd);
		rdbtnKtlcd.setBounds(750, 425, 131, 20);
		contentPane.add(rdbtnKtlcd);

		rdbtnBluOsecDisplay = new JRadioButton("BluOsec App");
		displayButtonGroup.add(rdbtnBluOsecDisplay);
		rdbtnBluOsecDisplay.setBounds(750, 445, 131, 20);
		contentPane.add(rdbtnBluOsecDisplay);

		rdbtnDiganostics = new JRadioButton("Diagnostics");
		displayButtonGroup.add(rdbtnDiganostics);
		rdbtnDiganostics.setBounds(750, 465, 131, 20);
		contentPane.add(rdbtnDiganostics);

		cbResetEeprom = new JCheckBox("Write eeprom magic byte (will reset eeprom)");
		cbResetEeprom.setSelected(true);
		cbResetEeprom.setBounds(600, 500, 300, 20);
		contentPane.add(cbResetEeprom);

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
		btnWriteoptionsbyte.setBounds(600, 580, 320, 40);
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

					text_to_save = "#define limit_without_pas " + txtSpeedlimitWithoutPas.getText();
					iWriter.println(txtSpeedlimitWithoutPas.getText());
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

					iWriter.println(cbTorqueSensor.isSelected());

					text_to_save = "#define RAMP_START " + ramp_start.getText();
					iWriter.println(ramp_start.getText());
					pWriter.println(text_to_save);

					text_to_save = "#define limit_with_throttle_override " + txtSpeedlimitWithThrottleOverride.getText();
					iWriter.println(txtSpeedlimitWithThrottleOverride.getText());
					pWriter.println(text_to_save);
					
					
					iWriter.println("");// old options, unused

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

					iWriter.println("");// old options, unused
					iWriter.println("");// old options, unused
					iWriter.println("");// old options, unused
					iWriter.println("");// old options, unused

					if (rdbtnBluOsecDisplay.isSelected()) {
						text_to_save = "#define BLUOSEC";
						pWriter.println(text_to_save);
					}
					iWriter.println(rdbtnBluOsecDisplay.isSelected());

					iWriter.println(rdbtnNodisplay.isSelected());
					iWriter.println("");// old options, unused
					iWriter.println("");// old options, unused

					text_to_save = "#define TQS_CALIB " + flt_tqCalibrationFactor.getText();
					iWriter.println(flt_tqCalibrationFactor.getText());
					pWriter.println(text_to_save);

					int acaFlags = 128;
					acaFlags |= (cbAssistLevelInfluencesThrottle.isSelected() ? 1 : 0);
					acaFlags |= (cbOffroadEnabled.isSelected() ? 2 : 0);
					acaFlags |= (cbBrakeDisablesOffroad.isSelected() ? 4 : 0);
					acaFlags |= (cbDigitalRegen.isSelected() ? 8 : 0);
					acaFlags |= (cbSpeedInfluencesRegen.isSelected() ? 16 : 0);
					acaFlags |= (cbSpeedInfluencesTqSensor.isSelected() ? 32 : 0);
					acaFlags |= (cbPasInverted.isSelected() ? 64 : 0);

					acaFlags |= (cbBypassLowSpeedRegenPiControl.isSelected() ? 256 : 0);
					
					acaFlags |= (cbDynAssist.isSelected() ? 512 : 0);
					acaFlags |= (cbPwmOff.isSelected() ? 1024 : 0);

					iWriter.println(acaFlags);

					pWriter.println("#define ACA " + acaFlags);

					if (!cbResetEeprom.isSelected()) {
						pWriter.println("#define EEPROM_NOINIT // eeprom will not be cleared");
					}
					pWriter.println("#define EEPROM_INIT_MAGIC_BYTE " + (System.currentTimeMillis() % 256) + " // makes sure (chance of fail 1/255) eeprom is invalidated after flashing new config");

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
		btnWriteConfiguration.setBounds(600, 520, 320, 40);
		contentPane.add(btnWriteConfiguration);

		if (lastSettingsFile != null) {
			try {
				loadSettings(lastSettingsFile);
			} catch (Exception ex) {

			}
			settingsList.clearSelection();
			updateDependiencies();
		}
	}
}
