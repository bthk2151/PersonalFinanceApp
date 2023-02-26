import React from "react";
import {
  Box,
  Toolbar,
  List,
  Divider,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  Typography,
  Switch,
  Avatar,
} from "@mui/material";
import {
  SportsScore,
  AccountBalance,
  CreditCard,
  DarkMode,
} from "@mui/icons-material";
import { Link } from "react-router-dom";

const pages = [
  { name: "Financial Goal", icon: <SportsScore />, urlPath: "financial-goal" },
  {
    name: "Assets & Liabilities",
    icon: <AccountBalance />,
    urlPath: "assets-liabilities",
  },
  {
    name: "Income & Expenses",
    icon: <CreditCard />,
    urlPath: "income-expenses",
  },
];

const SidebarItems = ({ setMode, isComprehensive }) => {
  return (
    <>
      <Toolbar />
      <Divider />
      {isComprehensive ? (
        <>
          <Box sx={{ display: "flex", justifyContent: "space-between" }}>
            <Box p={2}>
              <Typography>Good Evening,</Typography>
              <Typography variant="h6">Maximilian</Typography>
            </Box>
            <Box p={2}>
              <Avatar
                sx={{ height: 50, width: 50 }}
                src="https://yt3.ggpht.com/yti/AHXOFjX-3RIxw6R1PwBlaDHdB0IP49-c6MmVMvfvQF9cxg=s108-c-k-c0x00ffffff-no-rj"
              />
            </Box>
          </Box>
          <Divider />
        </>
      ) : null}
      <List>
        {pages.map((page) => (
          <ListItem key={page.name} disablePadding>
            <ListItemButton component={Link} to={"/" + page.urlPath}>
              <ListItemIcon>{page.icon}</ListItemIcon>
              <ListItemText primary={page.name} />
            </ListItemButton>
          </ListItem>
        ))}
      </List>
      <Divider />
      <ListItem disablePadding>
        <ListItemButton>
          <ListItemIcon>
            <DarkMode />
          </ListItemIcon>
          <ListItemText>
            <Switch
              defaultChecked
              onChange={(e) => setMode(e.target.checked ? "dark" : "light")}
            />
          </ListItemText>
        </ListItemButton>
      </ListItem>
      <Divider />
    </>
  );
};

export default SidebarItems;
