import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { Search, Loader2, Smartphone } from "lucide-react";
import { Input } from "@/components/ui/input";
import { Card, CardContent } from "@/components/ui/card";
import { supabase } from "@/integrations/supabase/client";

interface Props {
  brandId: string;
  onSelect: (deviceId: string, deviceName: string, releaseDate: string | null) => void;
}

interface Device {
  id: string;
  model_name: string;
  series: string | null;
  release_date: string | null;
  image_url: string | null;
}

const DeviceSelection = ({ brandId, onSelect }: Props) => {
  const [devices, setDevices] = useState<Device[]>([]);
  const [filteredDevices, setFilteredDevices] = useState<Device[]>([]);
  const [searchQuery, setSearchQuery] = useState("");
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchDevices = async () => {
      setLoading(true);
      const { data, error } = await supabase
        .from("devices")
        .select("id, model_name, series, release_date, image_url")
        .eq("brand_id", brandId)
        .order("model_name");

      if (error) {
        console.error("Error fetching devices:", error);
      } else {
        setDevices(data || []);
        setFilteredDevices(data || []);
      }
      setLoading(false);
    };

    fetchDevices();
  }, [brandId]);

  useEffect(() => {
    if (searchQuery.trim() === "") {
      setFilteredDevices(devices);
    } else {
      setFilteredDevices(
        devices.filter((device) =>
          device.model_name.toLowerCase().includes(searchQuery.toLowerCase())
        )
      );
    }
  }, [searchQuery, devices]);

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-[400px]">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <div className="max-w-4xl mx-auto animate-fade-in-up">
      <div className="text-center mb-8">
        <h2 className="text-3xl font-bold mb-4">Select Your Device Model</h2>
        <p className="text-muted-foreground">Choose your specific device model</p>
      </div>

      <div className="mb-8">
        <div className="relative">
          <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-muted-foreground" />
          <Input
            type="text"
            placeholder="Search models..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="pl-12 h-14 text-lg"
          />
        </div>
      </div>

      <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
        {filteredDevices.map((device, index) => (
          <motion.div
            key={device.id}
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: index * 0.03 }}
          >
            <Card
              className="cursor-pointer transition-all duration-300 hover:shadow-md hover:scale-105 border-2 hover:border-primary/50"
              onClick={() => onSelect(device.id, device.model_name, device.release_date)}
            >
              <CardContent className="p-6 flex flex-col items-center gap-4">
                <div className="w-full h-40 flex items-center justify-center bg-gradient-to-br from-gray-50 to-gray-100 rounded-lg overflow-hidden">
                  {device.image_url ? (
                    <img
                      src={device.image_url}
                      alt={device.model_name}
                      className="w-full h-full object-contain p-4"
                      loading="lazy"
                      onError={(e) => {
                        e.currentTarget.style.display = 'none';
                        e.currentTarget.parentElement!.innerHTML = '<div class="flex items-center justify-center w-full h-full"><svg class="w-16 h-16 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"></path></svg></div>';
                      }}
                    />
                  ) : (
                    <Smartphone className="w-16 h-16 text-gray-300" />
                  )}
                </div>
                <span className="font-medium text-center">{device.model_name}</span>
              </CardContent>
            </Card>
          </motion.div>
        ))}
      </div>

      {filteredDevices.length === 0 && (
        <div className="text-center py-12">
          <p className="text-muted-foreground text-lg">No devices found</p>
        </div>
      )}
    </div>
  );
};

export default DeviceSelection;