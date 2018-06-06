import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.io.*;
import java.awt.Desktop;
import java.net.URI;
import java.net.URISyntaxException;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.text.JTextComponent;
import javax.swing.JTextField;
import javax.swing.JButton;
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

public class OSEC extends JFrame {
	private static String OS = System.getProperty("os.name").toLowerCase();
	private JPanel contentPane;
	private JTextField txtMaxCadence;
	private JTextField txtNumberOfPas;
	private JLabel lblAssistLevel_5;
	private JTextField Assist_Level_6;
	private JButton lblHttpsopensourceebikefirmwarebitbucketio;
	private JLabel lblOpenSourceFirmware;
	private JButton btnWriteConfiguration;
	private JTextField txtMaxbatterycurrent;
	private JTextField txtOffsetangle;
	private final ButtonGroup Ridingmode = new ButtonGroup();
	private final ButtonGroup Controller_behaviour = new ButtonGroup();
	private final ButtonGroup PAS_Direction = new ButtonGroup();
	private final ButtonGroup Battery_setup = new ButtonGroup();
	private final ButtonGroup Interpolation360 = new ButtonGroup();
	private JLabel lblDiplayType;
	private final ButtonGroup buttonGroup = new ButtonGroup();
	private JTextField Assist_Level_1;
	private JTextField Assist_Level_2;
	private JTextField Assist_Level_3;
	private JTextField Assist_Level_4;
	private JLabel lblAssistLevel_3;
	private JLabel lblAssistLevel_4;
	private JTextField Assist_Level_5;
	private JTextField ramp_upwards;
	private JTextField ramp_downwards;
	private JTextField txtMaxregencurrent;
	private JLabel lblBatterySetup;
	private JRadioButton rdbtn7s;
	private JRadioButton rdbtn10s;
	private JRadioButton rdbtn13s;
	private JTextField textInterpolationstart;
	private JTextField RegenMotorMax;
	private JTextField MotorMax;
	private JTextField LI_ION_CELL_VOLTS_MAX;
	private JTextField LI_ION_CELL_VOLTS_20;
	private JTextField LI_ION_CELL_VOLTS_10;
	private JTextField LI_ION_CELL_VOLTS_40;
	private JTextField LI_ION_CELL_VOLTS_60;
	private JTextField LI_ION_CELL_VOLTS_80;
	private JTextField LI_ION_CELL_VOLTS_100;
	private JTextField LI_ION_CELL_VOLTS_0;
	private JTextField PAS_THRESHOLD;
	private JTextField LCD_BATTERY_CURRENT_FACTOR;
	
	

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

	/**
	 * Create the frame.
	 */
	public OSEC() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 789, 706);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblTollesProgramm = new JLabel("C#ROME-B Parameter Configurator");
		lblTollesProgramm.setHorizontalAlignment(SwingConstants.CENTER);
		lblTollesProgramm.setForeground(Color.BLUE);
		lblTollesProgramm.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblTollesProgramm.setBounds(219, 11, 326, 34);
		contentPane.add(lblTollesProgramm);
		
		JLabel lblMaxCadence = new JLabel("Maximum cadence");
		lblMaxCadence.setBounds(5, 119, 131, 14);
		contentPane.add(lblMaxCadence);
		
		txtMaxCadence = new JTextField();
		txtMaxCadence.setText("90");
		txtMaxCadence.setBounds(150, 117, 86, 20);
		contentPane.add(txtMaxCadence);
		txtMaxCadence.setColumns(10);
		txtMaxCadence.setToolTipText("This is the cadence where the defined current is reached.");
		
		JLabel lblNumberOfPas = new JLabel("Number of PAS Magnets");
		lblNumberOfPas.setBounds(5, 92, 141, 14);
		contentPane.add(lblNumberOfPas);
		
		txtNumberOfPas = new JTextField();
		txtNumberOfPas.setText("8");
		txtNumberOfPas.setBounds(150, 86, 86, 20);
		contentPane.add(txtNumberOfPas);
		txtNumberOfPas.setColumns(10);
		txtNumberOfPas.setToolTipText("This is the number of magnets in your PAS disk.");
		
		lblAssistLevel_5 = new JLabel("Assist Level 5");
		lblAssistLevel_5.setBounds(281, 230, 119, 14);
		contentPane.add(lblAssistLevel_5);
		
		Assist_Level_6 = new JTextField();
		Assist_Level_6.setText("1");
		Assist_Level_6.setBounds(382, 227, 86, 20);
		contentPane.add(Assist_Level_6);
		Assist_Level_6.setColumns(10);
		Assist_Level_6.setToolTipText("This is the percentage of the defined maximum current in Level 5.");
		
		JLabel lblAssistLevel0 = new JLabel("Assist Level 0");
		lblAssistLevel0.setBounds(281, 92, 119, 14);
		contentPane.add(lblAssistLevel0);
		
		Assist_Level_1 = new JTextField();
		Assist_Level_1.setText("0");
		Assist_Level_1.setColumns(10);
		Assist_Level_1.setBounds(382, 92, 86, 20);
		contentPane.add(Assist_Level_1);
		Assist_Level_1.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		
		JLabel lblAssistLevel_1 = new JLabel("Assist Level 1");
		lblAssistLevel_1.setBounds(281, 122, 119, 14);
		contentPane.add(lblAssistLevel_1);
		
		Assist_Level_2 = new JTextField();
		Assist_Level_2.setText("0.2");
		Assist_Level_2.setColumns(10);
		Assist_Level_2.setBounds(382, 119, 86, 20);
		contentPane.add(Assist_Level_2);
		
		JLabel lblAssistLevel_2 = new JLabel("Assist Level 2");
		lblAssistLevel_2.setBounds(281, 149, 119, 14);
		contentPane.add(lblAssistLevel_2);
		
		Assist_Level_3 = new JTextField();
		Assist_Level_3.setText("0.4");
		Assist_Level_3.setColumns(10);
		Assist_Level_3.setBounds(382, 146, 86, 20);
		contentPane.add(Assist_Level_3);
		
		Assist_Level_4 = new JTextField();
		Assist_Level_4.setText("0.6");
		Assist_Level_4.setColumns(10);
		Assist_Level_4.setBounds(382, 173, 86, 20);
		contentPane.add(Assist_Level_4);
		
		lblAssistLevel_3 = new JLabel("Assist Level 3");
		lblAssistLevel_3.setBounds(281, 176, 119, 14);
		contentPane.add(lblAssistLevel_3);
		
		lblAssistLevel_4 = new JLabel("Assist Level 4");
		lblAssistLevel_4.setBounds(281, 204, 119, 14);
		contentPane.add(lblAssistLevel_4);
		
		Assist_Level_5 = new JTextField();
		Assist_Level_5.setText("0.8");
		Assist_Level_5.setColumns(10);
		Assist_Level_5.setBounds(382, 201, 86, 20);
		contentPane.add(Assist_Level_5);
		
		JLabel lblCellVoltageMax = new JLabel("Cell Voltage Max");
		lblCellVoltageMax.setBounds(534, 95, 119, 14);
		contentPane.add(lblCellVoltageMax);
		
		LI_ION_CELL_VOLTS_MAX = new JTextField();
		LI_ION_CELL_VOLTS_MAX.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_MAX.setText("4.25");
		LI_ION_CELL_VOLTS_MAX.setColumns(10);
		LI_ION_CELL_VOLTS_MAX.setBounds(648, 92, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_MAX);
		
		LI_ION_CELL_VOLTS_20 = new JTextField();
		LI_ION_CELL_VOLTS_20.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_20.setText("3.38");
		LI_ION_CELL_VOLTS_20.setColumns(10);
		LI_ION_CELL_VOLTS_20.setBounds(648, 230, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_20);
		
		LI_ION_CELL_VOLTS_10 = new JTextField();
		LI_ION_CELL_VOLTS_10.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_10.setText("3.25");
		LI_ION_CELL_VOLTS_10.setColumns(10);
		LI_ION_CELL_VOLTS_10.setBounds(648, 261, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_10);
		
		LI_ION_CELL_VOLTS_40 = new JTextField();
		LI_ION_CELL_VOLTS_40.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_40.setText("3.6");
		LI_ION_CELL_VOLTS_40.setColumns(10);
		LI_ION_CELL_VOLTS_40.setBounds(648, 204, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_40);
		
		LI_ION_CELL_VOLTS_60 = new JTextField();
		LI_ION_CELL_VOLTS_60.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_60.setText("3.78");
		LI_ION_CELL_VOLTS_60.setColumns(10);
		LI_ION_CELL_VOLTS_60.setBounds(648, 173, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_60);
		
		LI_ION_CELL_VOLTS_80 = new JTextField();
		LI_ION_CELL_VOLTS_80.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_80.setText("3.93");
		LI_ION_CELL_VOLTS_80.setColumns(10);
		LI_ION_CELL_VOLTS_80.setBounds(648, 149, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_80);
		
		LI_ION_CELL_VOLTS_100 = new JTextField();
		LI_ION_CELL_VOLTS_100.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_100.setText("4.06");
		LI_ION_CELL_VOLTS_100.setColumns(10);
		LI_ION_CELL_VOLTS_100.setBounds(648, 120, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_100);
		
		LI_ION_CELL_VOLTS_0 = new JTextField();
		LI_ION_CELL_VOLTS_0.setToolTipText("This is the percentage of the defined maximum current in Level 1.");
		LI_ION_CELL_VOLTS_0.setText("3.00");
		LI_ION_CELL_VOLTS_0.setColumns(10);
		LI_ION_CELL_VOLTS_0.setBounds(648, 292, 86, 20);
		contentPane.add(LI_ION_CELL_VOLTS_0);
		
		JLabel lblCellVoltage100 = new JLabel("Cell Voltage 100");
		lblCellVoltage100.setBounds(534, 123, 119, 14);
		contentPane.add(lblCellVoltage100);
		
		JLabel lblCellVoltage80 = new JLabel("Cell Voltage 80");
		lblCellVoltage80.setBounds(534, 152, 119, 14);
		contentPane.add(lblCellVoltage80);
		
		JLabel lblCellVoltage60 = new JLabel("Cell Voltage 60");
		lblCellVoltage60.setBounds(534, 176, 119, 14);
		contentPane.add(lblCellVoltage60);
		
		JLabel lblCellVoltage40 = new JLabel("Cell Voltage 40");
		lblCellVoltage40.setBounds(534, 207, 119, 14);
		contentPane.add(lblCellVoltage40);
		
		JLabel lblCellVoltage20 = new JLabel("Cell Voltage 20");
		lblCellVoltage20.setBounds(534, 233, 119, 14);
		contentPane.add(lblCellVoltage20);
		
		JLabel lblCellVoltage10 = new JLabel("Cell Voltage 10");
		lblCellVoltage10.setBounds(534, 264, 119, 14);
		contentPane.add(lblCellVoltage10);
		
		JLabel lblCellVoltage0 = new JLabel("Cell Voltage 0");
		lblCellVoltage0.setBounds(534, 295, 119, 14);
		contentPane.add(lblCellVoltage0);
		
		PAS_THRESHOLD = new JTextField();
		PAS_THRESHOLD.setText("1.70");
		PAS_THRESHOLD.setColumns(10);
		PAS_THRESHOLD.setBounds(382, 252, 86, 20);
		contentPane.add(PAS_THRESHOLD);
		
		JLabel lblPasThreshold = new JLabel("PAS threshold");
		lblPasThreshold.setBounds(281, 255, 119, 14);
		contentPane.add(lblPasThreshold);
		
		JLabel lblLcdbatterycurrentfactor = new JLabel("Current factor");
		lblLcdbatterycurrentfactor.setBounds(281, 286, 119, 14);
		contentPane.add(lblLcdbatterycurrentfactor);
		
		LCD_BATTERY_CURRENT_FACTOR = new JTextField();
		LCD_BATTERY_CURRENT_FACTOR.setText("1.50");
		LCD_BATTERY_CURRENT_FACTOR.setColumns(10);
		LCD_BATTERY_CURRENT_FACTOR.setBounds(382, 283, 86, 20);
		contentPane.add(LCD_BATTERY_CURRENT_FACTOR);
		
		
		JList list = new JList();
		list.setBounds(441, 177, 1, 1);
		contentPane.add(list);
		
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
				      } catch (IOException e) { /* TODO: error handling */ }
				    } else { /* TODO: error handling */ }

			}
		});
		lblHttpsopensourceebikefirmwarebitbucketio.setForeground(Color.BLUE);
		lblHttpsopensourceebikefirmwarebitbucketio.setBounds(215, 633, 309, 29);
		contentPane.add(lblHttpsopensourceebikefirmwarebitbucketio);
		
		lblOpenSourceFirmware = new JLabel("Open Source Firmware for E-Bike Controller");
		lblOpenSourceFirmware.setHorizontalAlignment(SwingConstants.CENTER);
		lblOpenSourceFirmware.setFont(new Font("Tahoma", Font.PLAIN, 11));
		lblOpenSourceFirmware.setForeground(Color.BLUE);
		lblOpenSourceFirmware.setBounds(259, 42, 255, 14);
		contentPane.add(lblOpenSourceFirmware);
		
		txtMaxbatterycurrent = new JTextField();
		txtMaxbatterycurrent.setText("30");
		txtMaxbatterycurrent.setBounds(150, 230, 86, 20);
		contentPane.add(txtMaxbatterycurrent);
		txtMaxbatterycurrent.setColumns(10);
		
		JLabel lblBatteryCurrentMax = new JLabel("Battery Current max");
		lblBatteryCurrentMax.setBounds(5, 233, 131, 14);
		contentPane.add(lblBatteryCurrentMax);
		
		JLabel lblRegenCurrentMax = new JLabel("Regen Current max");
		lblRegenCurrentMax.setBounds(5, 201, 131, 14);
		contentPane.add(lblRegenCurrentMax);
		
		txtMaxregencurrent = new JTextField();
		txtMaxregencurrent.setText("30");
		txtMaxregencurrent.setColumns(10);
		txtMaxregencurrent.setBounds(150, 198, 86, 20);
		contentPane.add(txtMaxregencurrent);
		
		txtOffsetangle = new JTextField();
		txtOffsetangle.setText("0");
		txtOffsetangle.setBounds(150, 257, 86, 20);
		contentPane.add(txtOffsetangle);
		txtOffsetangle.setColumns(10);
		
		JLabel lblRampupwards = new JLabel("Delay upwards");
		lblRampupwards.setBounds(5, 146, 86, 14);
		contentPane.add(lblRampupwards);
		
		ramp_upwards = new JTextField();
		ramp_upwards.setText("25");
		ramp_upwards.setColumns(10);
		ramp_upwards.setBounds(150, 143, 86, 20);
		contentPane.add(ramp_upwards);
		
		JLabel lblOffsetangle = new JLabel("Offset angle");
		lblOffsetangle.setBounds(5, 260, 121, 14);
		contentPane.add(lblOffsetangle);
		
		JLabel lblRampdownwards = new JLabel("Delay downwards");
		lblRampdownwards.setBounds(5, 176, 109, 14);
		contentPane.add(lblRampdownwards);
		
		ramp_downwards = new JTextField();
		ramp_downwards.setText("10");
		ramp_downwards.setColumns(10);
		ramp_downwards.setBounds(150, 173, 86, 20);
		contentPane.add(ramp_downwards);
				
		JRadioButton rdbtnThrottle_PAS = new JRadioButton("Throttle / PAS");
		rdbtnThrottle_PAS.setSelected(true);
		Ridingmode.add(rdbtnThrottle_PAS);
		rdbtnThrottle_PAS.setBounds(150, 476, 109, 23);
		contentPane.add(rdbtnThrottle_PAS);
		
		JRadioButton rdbtnTorquesensor = new JRadioButton("Torquesensor");
		Ridingmode.add(rdbtnTorquesensor);
		rdbtnTorquesensor.setBounds(150, 500, 131, 23);
		contentPane.add(rdbtnTorquesensor);
		
		JRadioButton rdbtnPWMdirectly = new JRadioButton("PWM directly");
		Controller_behaviour.add(rdbtnPWMdirectly);
		rdbtnPWMdirectly.setBounds(150, 579, 144, 23);
		contentPane.add(rdbtnPWMdirectly);
		
		JRadioButton rdbtnCurrentSpeed = new JRadioButton("Current / Speed");
		rdbtnCurrentSpeed.setSelected(true);
		Controller_behaviour.add(rdbtnCurrentSpeed);
		rdbtnCurrentSpeed.setBounds(150, 603, 144, 23);
		contentPane.add(rdbtnCurrentSpeed);
		
		JLabel lblRideMode = new JLabel("Input Type");
		lblRideMode.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblRideMode.setBounds(150, 457, 86, 14);
		contentPane.add(lblRideMode);
		
		lblDiplayType = new JLabel("Torquesensor mode");
		lblDiplayType.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblDiplayType.setBounds(5, 487, 131, 14);
		contentPane.add(lblDiplayType);
		
		JRadioButton rdbtnTorqueOnly = new JRadioButton("torque only");
		buttonGroup.add(rdbtnTorqueOnly);
		rdbtnTorqueOnly.setBounds(5, 508, 109, 23);
		contentPane.add(rdbtnTorqueOnly);
		
		JRadioButton rdbtnHumanPower = new JRadioButton("human power");
		rdbtnHumanPower.setSelected(true);
		buttonGroup.add(rdbtnHumanPower);
		rdbtnHumanPower.setBounds(5, 532, 131, 23);
		contentPane.add(rdbtnHumanPower);
		
		JLabel lblControlBehavior = new JLabel("Control behavior");
		lblControlBehavior.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblControlBehavior.setBounds(150, 560, 131, 14);
		contentPane.add(lblControlBehavior);
		
		JLabel lblPasDirection = new JLabel("PAS Direction");
		lblPasDirection.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblPasDirection.setBounds(5, 560, 131, 14);
		contentPane.add(lblPasDirection);
		
		JRadioButton rdbtnLeft = new JRadioButton("Left");
		PAS_Direction.add(rdbtnLeft);
		rdbtnLeft.setBounds(5, 579, 109, 23);
		contentPane.add(rdbtnLeft);
		
		JRadioButton rdbtnRight = new JRadioButton("Right");
		PAS_Direction.add(rdbtnRight);
		rdbtnRight.setSelected(true);
		rdbtnRight.setBounds(5, 603, 131, 23);
		contentPane.add(rdbtnRight);
		
		lblBatterySetup = new JLabel("Battery Type");
		lblBatterySetup.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblBatterySetup.setBounds(5, 384, 131, 14);
		contentPane.add(lblBatterySetup);
		
		rdbtn7s = new JRadioButton("7s");
		Battery_setup.add(rdbtn7s);
		rdbtn7s.setBounds(5, 405, 66, 23);
		contentPane.add(rdbtn7s);
		
		rdbtn10s = new JRadioButton("10s");
		Battery_setup.add(rdbtn10s);
		rdbtn10s.setSelected(true);
		rdbtn10s.setBounds(5, 429, 61, 23);
		contentPane.add(rdbtn10s);
		
		rdbtn13s = new JRadioButton("13s");
		Battery_setup.add(rdbtn13s);
		rdbtn13s.setBounds(5, 457, 61, 23);
		contentPane.add(rdbtn13s);
		
		JLabel lblInterpolationstart60 = new JLabel("60\u00B0 Interpolation Start");
		lblInterpolationstart60.setBounds(5, 291, 141, 14);
		contentPane.add(lblInterpolationstart60);
		
		textInterpolationstart = new JTextField();
		textInterpolationstart.setText("15");
		textInterpolationstart.setColumns(10);
		textInterpolationstart.setBounds(150, 288, 86, 20);
		contentPane.add(textInterpolationstart);
		
		JLabel lblInterpolation360 = new JLabel("360\u00B0 Interpolation");
		lblInterpolation360.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblInterpolation360.setBounds(300, 384, 142, 14);
		contentPane.add(lblInterpolation360);
		lblInterpolation360.setToolTipText("Here you can choose if you want 360° interpolation.");
		
		JRadioButton rdbtnYes = new JRadioButton("Yes");
		Interpolation360.add(rdbtnYes);
		rdbtnYes.setBounds(300, 403, 109, 23);
		contentPane.add(rdbtnYes);
		
		JRadioButton rdbtnNo = new JRadioButton("No");
		Interpolation360.add(rdbtnNo);
		rdbtnNo.setSelected(true);
		rdbtnNo.setBounds(300, 427, 86, 23);
		contentPane.add(rdbtnNo);
		
		JRadioButton rdbtnThrottleNotLimited = new JRadioButton("Throttle not limited");
		rdbtnThrottleNotLimited.setBounds(150, 526, 131, 23);
		contentPane.add(rdbtnThrottleNotLimited);
		
		JLabel lblRegenMotorMax = new JLabel("Regen Motor max");
		lblRegenMotorMax.setBounds(5, 319, 131, 14);
		contentPane.add(lblRegenMotorMax);
		
		RegenMotorMax = new JTextField();
		RegenMotorMax.setText("66");
		RegenMotorMax.setColumns(10);
		RegenMotorMax.setBounds(150, 316, 86, 20);
		contentPane.add(RegenMotorMax);
		
		JLabel lblMotorMax = new JLabel("Motor max");
		lblMotorMax.setBounds(5, 347, 131, 14);
		contentPane.add(lblMotorMax);
		
		MotorMax = new JTextField();
		MotorMax.setText("120");
		MotorMax.setColumns(10);
		MotorMax.setBounds(150, 344, 86, 20);
		contentPane.add(MotorMax);
		
		JRadioButton rdbtnUseRegen = new JRadioButton("Use Regen");
		rdbtnUseRegen.setBounds(277, 315, 131, 23);
		contentPane.add(rdbtnUseRegen);
		
		
		
		JButton btnWriteoptionsbyte = new JButton("Write Option Bytes");
		btnWriteoptionsbyte.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnWriteoptionsbyte.setForeground(Color.BLUE);
		btnWriteoptionsbyte.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				{

				      int n = JOptionPane.showConfirmDialog(  
				                null,
				                "If you run this function with a brand new controller, the original firmware will be erased. This can't be undone. Are you sure?" ,
				                "",
				                JOptionPane.YES_NO_OPTION);
				      
				      if(n == JOptionPane.YES_OPTION)
				      {
				    	  if (OS.indexOf("win")>=0) {
				    	  try {
								Process process = Runtime.getRuntime().exec("cmd /c start WriteOptionBytes");
							} catch (IOException e1) {
								txtNumberOfPas.setText("Error");
								e1.printStackTrace();
							}
				    	  }
				      }
				      else
				      {
				          JOptionPane.showMessageDialog(null, "Goodbye");
				      }
				      
				  // Saving code here
				}
			}
		});
		btnWriteoptionsbyte.setBounds(567, 546, 167, 51);
		contentPane.add(btnWriteoptionsbyte);
		
		btnWriteConfiguration = new JButton("Write Configuration");
		btnWriteConfiguration.addActionListener(new ActionListener() {
		
			public void actionPerformed(ActionEvent arg0) {
		        PrintWriter pWriter = null; 
		        try { 
		            pWriter = new PrintWriter(new BufferedWriter(new FileWriter("config.h"))); 
		            pWriter.println("/*\r\n" + 
		            		" * config.h\r\n" + 
		            		" *\r\n" + 
		            		" *  Automatically created by OSEC Parameter Configurator\r\n" + 
		            		" *  Author: stancecoke\r\n" + 
		            		" */\r\n" + 
		            		"\r\n" + 
		            		"#ifndef CONFIG_H_\r\n" + 
		            		"#define CONFIG_H_\r\n"); 
		            
		            String text_to_save = "#define PAS_NUMBER_MAGNETS " + txtNumberOfPas.getText();
		            pWriter.println(text_to_save); 
		            
		            text_to_save = "#define PAS_MAX_CADENCE_RPM " + txtMaxCadence.getText();
		            pWriter.println(text_to_save); 

		            text_to_save = "#define MOTOR_ROTOR_OFFSET_ANGLE " + txtOffsetangle.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ADC_BATTERY_CURRENT_MAX " + txtMaxbatterycurrent.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ADC_BATTERY_REGEN_CURRENT_MAX " + txtMaxregencurrent.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ADC_MOTOR_CURRENT_MAX " + MotorMax.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ADC_MOTOR_REGEN_CURRENT_MAX " + RegenMotorMax.getText();
		            pWriter.println(text_to_save); 


		            text_to_save = "#define ASSIST_LEVEL_0  " + Assist_Level_1.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ASSIST_LEVEL_1  " + Assist_Level_2.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define ASSIST_LEVEL_2  " + Assist_Level_3.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define ASSIST_LEVEL_3  " + Assist_Level_4.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define ASSIST_LEVEL_4  " + Assist_Level_5.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define ASSIST_LEVEL_5 " + Assist_Level_6.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP " + ramp_upwards.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP " + ramp_downwards.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES " + textInterpolationstart.getText();
		            pWriter.println(text_to_save); 
		            
		            text_to_save = "#define LI_ION_CELL_VOLTS_MAX " + LI_ION_CELL_VOLTS_MAX.getText();
		            pWriter.println(text_to_save); 
		            text_to_save = "#define LI_ION_CELL_VOLTS_100 " + LI_ION_CELL_VOLTS_100.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define LI_ION_CELL_VOLTS_80 " + LI_ION_CELL_VOLTS_80.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define LI_ION_CELL_VOLTS_60 " + LI_ION_CELL_VOLTS_60.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define LI_ION_CELL_VOLTS_40 " + LI_ION_CELL_VOLTS_40.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define LI_ION_CELL_VOLTS_20 " + LI_ION_CELL_VOLTS_20.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define LI_ION_CELL_VOLTS_10 " + LI_ION_CELL_VOLTS_10.getText();
		            pWriter.println(text_to_save);
		            text_to_save = "#define LI_ION_CELL_VOLTS_0 " + LI_ION_CELL_VOLTS_0.getText();
		            pWriter.println(text_to_save);
		            
		            text_to_save = "#define PAS_THRESHOLD " + PAS_THRESHOLD.getText();
		            pWriter.println(text_to_save);
		            
		            text_to_save = "#define LCD_BATTERY_CURRENT_FACTOR " + LCD_BATTERY_CURRENT_FACTOR.getText();
		            pWriter.println(text_to_save);
	            
		            

		    		if (rdbtnTorquesensor.isSelected()){ 
			            text_to_save = "#define EBIKE_THROTTLE_TYPE	EBIKE_THROTTLE_TYPE_TORQUE_SENSOR";
			            pWriter.println(text_to_save); 		                
		    		}
		    		if (rdbtnThrottle_PAS.isSelected()){ 
			            text_to_save = "#define EBIKE_THROTTLE_TYPE	EBIKE_THROTTLE_TYPE_THROTTLE_PAS";
			            pWriter.println(text_to_save); 		                
		    		}
		    		if (rdbtnPWMdirectly.isSelected()){ 
			            text_to_save = "#define EBIKE_THROTTLE_TYPE_THROTTLE_PAS_PWM_DUTY_CYCLE";
			            pWriter.println(text_to_save); 		                
		    		}
		    		if (rdbtnCurrentSpeed.isSelected()){ 
			            text_to_save = "#define EBIKE_THROTTLE_TYPE_THROTTLE_PAS_CURRENT_SPEED";
			            pWriter.println(text_to_save); 		                
		    		}
		    		if (rdbtnHumanPower.isSelected()){ 
			            text_to_save = "#define EBIKE_THROTTLE_TYPE_TORQUE_SENSOR_HUMAN_POWER";
			            pWriter.println(text_to_save); 		
			        }
		    		if (rdbtnLeft.isSelected()){ 
			            text_to_save = "#define PAS_DIRECTION PAS_DIRECTION_LEFT";
			            pWriter.println(text_to_save); 
		    		}
		    		if (rdbtnRight.isSelected()){ 
			            text_to_save = "#define PAS_DIRECTION PAS_DIRECTION_RIGTH";
			            pWriter.println(text_to_save); 
		    		}
		    		if (rdbtn7s.isSelected()){ 
			            text_to_save = "#define BATTERY_LI_ION_CELLS_NUMBER	 7";
			            pWriter.println(text_to_save); 
		    		}
		    		if (rdbtn10s.isSelected()){ 
			            text_to_save = "#define BATTERY_LI_ION_CELLS_NUMBER	 10";
			            pWriter.println(text_to_save); 
		    		}
		    		if (rdbtn13s.isSelected()){ 
			            text_to_save = "#define BATTERY_LI_ION_CELLS_NUMBER	 13";
			            pWriter.println(text_to_save); 
		    		}

		    		if (rdbtnYes.isSelected()){ 
			            text_to_save = "#define DO_SINEWAVE_INTERPOLATION_360_DEGREES";
			            pWriter.println(text_to_save); 
		    		}
		    		
		    		if (rdbtnThrottleNotLimited.isSelected()){ 
			            text_to_save = "#define EBIKE_THROTTLE_TYPE_THROTTLE_PAS_ASSIST_LEVEL_PAS_ONLY";
			            pWriter.println(text_to_save); 
		    		}
		    		
		    		if (rdbtnUseRegen.isSelected()){ 
			            text_to_save = "#define EBIKE_REGEN_EBRAKE_LIKE_COAST_BRAKES";
			            pWriter.println(text_to_save); 
		    		}
		    		


		            pWriter.println("\r\n#endif /* CONFIG_H_ */"); 
		            
		            
		        } catch (IOException ioe) { 
		            ioe.printStackTrace(); 
		        } finally { 
		            if (pWriter != null){ 
		                pWriter.flush(); 
		                pWriter.close(); 
		            } 
			}
		        if (OS.indexOf("win")>=0) {
		        try {
					Process process = Runtime.getRuntime().exec("cmd /c start Start_Compiling");
				} catch (IOException e1) {
					txtNumberOfPas.setText("Error");
					e1.printStackTrace();
				}
		        }
			}
		});
		btnWriteConfiguration.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnWriteConfiguration.setForeground(Color.BLUE);
		btnWriteConfiguration.setBounds(567, 476, 167, 58);
		contentPane.add(btnWriteConfiguration);
		

		


		

		

		
		
		
	}
}